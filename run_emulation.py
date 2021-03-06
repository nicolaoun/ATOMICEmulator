import os
from time import sleep
import sys
import subprocess

# kill the server instances from the machines
def kill_servers():
    for ip in aws_machines:
        print "Killing servers at "+ip+"....";
        command = "ssh -i ~/.ssh/aws_key.pem ubuntu@"+ip+" '~/ATOMICEmulator/scripts/kill_servers.sh'"
        #execute the command
        os.system(command)

# clean meta data from the machines
def clean_data():
    for ip in aws_machines:
        print "Cleaning data at "+ip+"....";

        # get the list of nodes to clean
        out_file = ip+".nodes.out"

        # collect the servers
        command = "ssh -i ~/.ssh/aws_key.pem ubuntu@"+ip+" 'ls | grep \"server_\"' > "+out_file
        #execute the command
        os.system(command)

        # command to collect the clients
        command = "ssh -i ~/.ssh/aws_key.pem ubuntu@"+ip+" 'ls | grep \"client_\"' >> "+out_file
        #execute the command
        os.system(command)

        with open(out_file) as f:
            for line in f:
                meta_dir = line.split("\n")[0]+"/.meta"
                print "Cleaning "+meta_dir+" at "+ip
                command = "ssh -i ~/.ssh/aws_key.pem ubuntu@"+ip+" 'rm "+meta_dir+"/*'"
                #execute the command
                os.system(command)

# create output file
def create_output_file_for_scenario(drct):
    #directory = "output/ALL_RESULTS.fail."+str(fail)+"servers."+str(numServers)+".txt"
    directory = drct

    #create directory if needed
    if not os.path.exists(os.path.dirname(directory)):
        os.makedirs(os.path.dirname(directory))

    #open the file for this execution output
    with open(directory, "w") as text_file:
        text_file.write("Protocol #Servers #Readers #Writers rIntvl wIntvl fastOps slowOps readRatio readPrcnt readAvgT\n")

    return directory

# copy to remode device
def copy_to_machine(filepath, destdir, ip):
    print "Copying "+filepath+" to "+ip
    command = "scp -i ~/.ssh/aws_key.pem "+filepath+" ubuntu@"+ip+":"+destdir
    os.system(command)

#collect the available aws instances
def parse_vms(filename):
    with open(filename) as f:
        for line in f:
            ip=line.split()[0]
            print "Adding IP:"+ip+"..."
            aws_machines.append(ip);
            
        print "Detected "+str(len(aws_machines))+" VMs running."


def run_tests(S, R):
    global seed
    num_tests = 1
    seed = 0
    for t in range(0, num_tests+1):
        print "        executing #test=" + str(t)


        out_file = "output/"+proto+"/S_"+str(S)+"_R_"+str(R)+"_test_"+str(t)+".txt"
        #if execute flag raised - invoke the command otherwise just parse the output
        if(not os.path.isfile(out_file)):
                #create a file for each test
                out_file = create_output_file_for_scenario(out_file)

        # run the writer
        run_writer(out_file)

        # run the readers in the available machines
        run_readers(R, out_file)

        # wait for processes to terminate
        # exit_codes = [p.wait() for p in processes]
        for p in processes:
            print "Waiting process with id: "+str(p.pid)
            p.wait()

        del processes[:]

        # go to next seed
        seed = seed + 9

        # collect the results for the test

    # calculate the avg for the scenario

def run_servers(numS):
    global port 

    # set the file to save the list of servers
    serverfile = "servers.list"
    f = open(serverfile, "w")

    for id in range(1, numS+1):
        # pick the machine to run
        vm = id % len(aws_machines)
        ip = aws_machines[vm]

        print "Running server ID:"+str(id)+", IP:"+ip+", Port:"+str(port)

        f.write(str(id)+" "+ip+" "+str(port)+"\n")

        command = 'ssh -i ~/.ssh/aws_key.pem ubuntu@'+ip+' \'~/asm -t serve -p '+str(port)+' -i '+str(id)+' -a '+str(protocols[proto])+' -d 6\' >> servers.out &'
        print "Command: "+command
        #execute the command
        os.system(command)
        #subprocess.Popen(["ssh","-i", "/home/ubuntu/.ssh/aws_key.pem", "ubuntu@"+ip, "'~/asm -t serve -p "+str(port)+" -i "+str(id)+" -a 6 -d 8'"])
        #subprocess.Popen(command, shell=True)

        port = port+1

    # close file
    f.close()

    # send the file to all the machines
    for ip in aws_machines:
        copy_to_machine(serverfile, "~/", ip)


def run_writer(out_file):
    global seed

    # run the writer on the first machine
    command = "ssh -i ~/.ssh/aws_key.pem ubuntu@"+aws_machines[0]+" '~/asm -t write -i 0 -o reg0 -a "+str(protocols[proto])+" -c 1 -d 6 -v 1 -m auto -s "+str(seed)+"' > "+out_file+".writer"

    print "Running the writer process...."
    print "Command: "+command

    # copy the command into the running script
    f = open("run_writer.sh","w")
    f.write(command)
    f.close()

    # copy the script over
    copy_to_machine("run_writer.sh", "~/", aws_machines[0])

    #execute the command
    #os.system(command)
    processes.append(subprocess.Popen(["ssh","-i", "/home/ubuntu/.ssh/aws_key.pem", "ubuntu@"+aws_machines[0], "'/home/ubuntu/run_writer.sh'"]))

def run_readers(numR, out_file):
    global seed

    for id in range(1, numR+1):
        # pick the machine to run
        vm = id % len(aws_machines)
        # run the reader
        print "Running reader "+str(id)+" process...."
        command = "ssh -i ~/.ssh/aws_key.pem ubuntu@"+aws_machines[vm]+" '~/asm -t read -i "+str(id)+" -o reg0 -a "+str(protocols[proto])+" -c 1 -d 6 -v 1 -m auto -s "+str(seed)+"' > "+out_file+".reader"+str(id)

        # copy the command into the running script
        f = open("run_reader_"+str(id)+".sh","w")
        f.write(command)
        f.close()
        os.system("chmod +x run_reader_"+str(id)+".sh")

        # copy the script over
        copy_to_machine("run_reader_"+str(id)+".sh", "~/", aws_machines[vm])

        #execute the command
        #os.system(command)
        #processes.append(subprocess.Popen(command))
        processes.append(subprocess.Popen(["ssh","-i", "/home/ubuntu/.ssh/aws_key.pem", "ubuntu@"+aws_machines[0], "'/home/ubuntu/run_reader_"+str(id)+".sh'"]))


#############################################################################
####################### GLOBAL VARIABLES ####################################
#############################################################################

executeFlag=1
abd = "abd" 
oh_sam = "oh-Sam"
semifast = "Semifast"
hybridfast = "HybridFast"
oh_fast = "oh-Fast"
alg =""
executable=""
proto = "CCHybrid"
tests = 1
Version="fixInt"# "randInt"
aws_machines=[]
processes=[]
seed = 0
port = 4000

# _start is the initial
# _stop is the last one - included!
rdrs_start = 10 
rdrs_stop=10
rdrs_step=10  #No worries we will end up doing 10,20,40,80,100
#protocols = [ ["abd", "am-abd"], ["oh-Sam", "am-ohSam"], ["Semifast", "am-semifast"], ["HybridFast", "am-cchybrid"], ["oh-Fast", "am-ohfast"] ]
#protocols = { 'ABD' : 1, 'CCHybrid' : 6 }
protocols = { 'ABD' : 1 }
srvrs_start=10 #10
srvrs_stop=10
srvrs_step=5
bar=0

def main():
    # my code here
    global port 
    global proto 

    print "Starting Script...\n"

    if len(sys.argv) > 2:
        # get the server file
        vmfile = sys.argv[1]

        # get the available machines
        parse_vms(vmfile)

        if sys.argv[2] == "kill":
            kill_servers()
        elif sys.argv[2] == "clean":
            clean_data()
        elif sys.argv[2] == "servers":
            # Copy asm
            for ip in aws_machines:
                copy_to_machine("~/ATOMICEmulator/asm", "~/", ip)

            # for testing run 10 servers
            run_servers(10)
        elif sys.argv[2] == "start":
            # prepare the output directory
            main_results_dir = "output/ALL_RESULTS.txt"
            print "*** The Main Averaged Results will be at: " + str(main_results_dir)+" ***"
            main_directory = create_output_file_for_scenario(main_results_dir)

            # Copy asm
            for ip in aws_machines:
                copy_to_machine("~/ATOMICEmulator/asm", "~/", ip)

            # run for each protocol
            for protocol, protoid in protocols.items():
                print "Running protocol: "+protocol+", id:"+str(protoid)
                proto = protocol

                # for all server configs
                for numServers in range(srvrs_start, srvrs_stop+1, srvrs_step):
                    print "     Servers: "+str(numServers)
                   
                    # run the new server instances
                    run_servers(numServers)
                    # wait 5s for the servers to initialize
                    sleep(5)

                    for numReaders in range(rdrs_start, rdrs_stop+1, rdrs_step):
                        if (numReaders==10) or (numReaders==20) or (numReaders==40) or (numReaders==80) or (numReaders==100):
                            print "          Readers: "+str(numReaders)
                            # run the scenario
                            run_tests(numServers, numReaders)

                    # kill running server instances
                    kill_servers()
                    sleep(15)
                    # set the starting port
                    port = port + numServers
                    print "Waiting...."
        else:
            print "Unknown command."

        print "\nAll done, script exiting..."
    else:
        print "Usage: server file and command [kill, clean, servers, start] expected."

if __name__ == "__main__":
    main()



