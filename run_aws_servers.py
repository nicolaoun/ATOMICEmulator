import os
from time import sleep
import sys

def run_servers(filename):
    with open(filename) as f:
        for line in f:
            id = line.split(" ")[0]
            ip = line.split(" ")[1]
            port = line.split(" ")[2].split("\n")[0]
            print "ID:"+id+", IP:"+ip+", Port:"+port
            command = "ssh -i ~/.ssh/aws_key.pem ubuntu@"+ip+" '~/ATOMICEmulator/asm -t serve -p "+port+" -i "+id+" -a 6 -d 6'"
            #execute the command
            os.system(command)

executeFlag=1
abd = "abd" 
oh_sam = "oh-Sam"
semifast = "Semifast"
hybridfast = "HybridFast"
oh_fast = "oh-Fast"
alg =""
executable=""
protocol = ""
tests = 5
Version="fixInt"# "randInt"

#############################################################################
#############################################################################
###### NOTE FOR THE FINAL UNCOMMENT THIS ####################################
#############################################################################
#############################################################################
# _start is the initial
# _stop is the last one - included!
rdrs_start = 10 
rdrs_stop=100
rds_step=10  #No worries we will end up doing 10,20,40,80,100
protocols = [ ["abd", "am-abd"], ["oh-Sam", "am-ohSam"], ["Semifast", "am-semifast"], ["HybridFast", "am-cchybrid"], ["oh-Fast", "am-ohfast"] ]
srvrs_start=10 #10
srvrs_stop=10
srvrs_step=5
bar=0

def main():
    # my code here

    print "Starting Script...\n"

    # get the server file
    serverfile = sys.argv[1]

    run_servers(serverfile)

    print "\nAll done, script exiting..."

if __name__ == "__main__":
    main()



