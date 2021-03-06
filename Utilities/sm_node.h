/*
 The MIT License (MIT)
 
 Copyright (c) 2016 Dongjae (David) Kim
 
 Permission is hereby granted, free of charge, to any person obtaining a copy
 of this software and associated documentation files (the "Software"), to deal
 in the Software without restriction, including without limitation the rights
 to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
 copies of the Software, and to permit persons to whom the Software is
 furnished to do so, subject to the following conditions:
 
 The above copyright notice and this permission notice shall be included in all
 copies or substantial portions of the Software.
 
 THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
 IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
 FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
 AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
 LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
 OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
 SOFTWARE.
 */

#ifndef smNode_h
#define smNode_h

#include "sm_common.h"
#include "filesystem.h"
#include "set_operations.hpp"
#include <sys/time.h>
#include <time.h>
#include <string>
//streams
#include <iostream>
#include <fstream>
#include <sstream>
//data structures
#include <set>
#include <vector>
#include <unordered_map>
#include <string.h>
#include <unistd.h>
#include <stdarg.h>
//network
#include <sys/types.h>          /* For sockets */
#include <sys/socket.h>         /* For sockets */
#include <sys/uio.h>            /* For sendfile */
#include <netinet/in.h>         /* For Internet sockets */
#include <arpa/inet.h>
#include <netdb.h>              /* For gethostbyname */
#include <fcntl.h>              /* For nonblocking socket */
//threads
#include <cstdlib>              // exit
#include <algorithm>
#include <thread>
#include <mutex>
//JSON
#include "rapidjson/document.h"

// Process Types
enum ProcessType{
    SERVER,
    READER,
    WRITER,
};

// Statuses
enum Status{
    IDLE,
    PHASE1,
    PHASE2,
};

// Outcomes
enum ActionOutcome{
    SUCCESS = true,
    FAILURE = false
};

// Quorum views
enum QuorumViews{
    QVIEW_1,
    QVIEW_2,
    QVIEW_3,
};

// MWMR Protocols
enum Protocol{
    PROTO_ABD = 1,
    PROTO_MWABD = 2,
    PROTO_CWFR = 3,
    PROTO_SSO = 4,
    PROTO_SSO_APPRX = 5,
    PROTO_CCHYBRID = 6
};

// Message Types
enum MessageType{
    WRITE,
    READ,
    INFORM,
    WRITEACK,
    READACK,
    INFORMACK,
    TERMINATE,
    CTRL_FSIZE,
    CTRL_PKT
};

// Network Settings
const std::size_t MAX_BUFFER_SIZE = 1024;

// Error Types
enum ErrorType{
    COUNTER_ERROR
};

//Minimum timeout
const std::size_t MIN_TIMEOUT = 1;

//Debugging 1-7: 1-detailed messages, 7-protocol messages only
//#define DEBUG_LEVEL_ 1
/*enum DebugLevel{
    //DEBUG_LEVEL_ = 2
    ALL_MSGS = 1,
    NETWORK_ = 2,
    PROTOCOL_INFO = 4
};
 */


//int vid_compare(const void *id1, const void *id2);  //packet comparison used by qsort
//int pkt_vid_compare(const void *id1, const void *id2);  //packet comparison used by qsort
class CTRLPacket : public Serializable{
public:
    int msgType;                // Type of the message
    int fsize;                  // Size of the file
    int counter;                // Used to determine if this is a new packet
    
    CTRLPacket(){};
    
    virtual void serialize(std::ostream& stream)
    {
        // Serialization code
        // stream << msgType << " "  << fsize << " " << counter;
        stream << "{\"mType\" : " << msgType << ", \"fSize\" : "  << fsize << ", \"Counter\" : " << counter <<"}";
    }
    
    virtual void deserialize(std::istream& stream)
    {
        // Deserialization code
        stream >> msgType >> fsize >> counter;
    }

    virtual void deserialize(std::string jsonstr)
    {
        std::cout << "Called CTRLPacket deserialise()....\n";

        rapidjson::Document jsonDoc;

        //parse JSON
        jsonDoc.Parse(jsonstr.c_str());

        // Deserialization code
        //stream >> msgType >> fsize >> counter;
        msgType = jsonDoc["mType"].GetInt();
        fsize = jsonDoc["fSize"].GetInt();
        counter = jsonDoc["Counter"].GetInt();
    }
};

/*
 * Specification of a participant in the Register Implementation service
 */
class smNode {
    
public:
    int nodeID;             // node identifier
    char hostname[100];     // node hostname
    char ip_addr[30];       // node ip address
    int port;               // node incoming port
    int sock;               // node communication socket
    //zmq::socket_t *z_sock;  // node zmq socket

    int req_counter_;           // request counter
    int receive_counter_;       // count # of messages received

    smNode();
    smNode(int proto, char* sfile, char* qfile);
    //void terminate();
    void DEBUGING(int level, const char *format, ...);
    void REPORTERROR(const char *format, ...);

    // overloaded < operator
    bool operator < (const smNode& n) const
    {
        return (this->nodeID < n.nodeID);
    }

    // overloaded == operator
    bool operator == (const smNode& n) const
    {
        //Check if n1 == n2
        return (this->nodeID == n.nodeID);
    }
    
protected:  
    int random_;                //choose random interval yes/no
    int seed_;

    int debuglvl;           // debug messages lvl
    std::string logfile;
    std::string infofile;
    std::string errorfile;

    int S_;                     // number of servers in the system
    int R_;                     // number of readers in the system
    int W_;                     // number of writers in the system
    int Q_;                     // number of quorums in the quorum system

    int *server_mem;            // @ r/w: Server list associated with the quorums they belong into
    int *q_mem_num;             // @ r/w: list of # of members of each quorum
    int *q_rcv_count;           // counts # of members of each quorum that replied to a r/w req
    
    int protocol_;              // which protocol to run SIMPLE, CWFR, SSO
    
    int role_;                  // Server, reader or writer
    int faulty_;                // whether a node may fail
    int crashed_;               // indicates whethter the node is crashed and dead
    //int randomness_;          // to indicate whether we use random interval for sends
    int mode_;                  // specifies whether node is idle or waiting
    
    //helpful counters
    int num_msgs_;
    int num_writes_;
    int num_reads_;
    int num_one_comm_;
    int num_two_comm_;
    
    // Timers
    double startTime,endTime,totTime,crashTime;
    double realTstart,realTend,realTtot;
    struct timeval sysTime;
    
    // Network operations
    fd_set readfds,crashfds;    // fd set descriptors
    std::vector<smNode> servers_list_;
    std::set<smNode> servers_connected_;
    std::set<int> servers_id_connected_;
    void parse_hosts(const char*);
    void connect_to_hosts();
    bool connect_to_server(smNode *s);
    bool connect_to_node(smNode *n);
    void setnonblocking(int sock);
    
    /*
     * Regular socket send
     */
    template <typename PacketClass>
    bool send_pkt(int sock, PacketClass *p)
    {
        int transmitLen=0 , bytes_sent;
        std::stringbuf sb;
        std::ostream ostm(&sb);
        char sendbuf[MAX_BUFFER_SIZE];
        
        try{
            p->serialize(ostm);
            
            DEBUGING(2, "Sending Buffer: %s\n", sb.str().c_str());
            
            bytes_sent = (int) send(sock, sb.str().c_str(), MAX_BUFFER_SIZE,0);
            
            if ( bytes_sent < 0 )
            {
                // error while sending the message
                REPORTERROR("Sending a packet on socket %d", sock);
                return false;
            }
            
            transmitLen += bytes_sent;
            
            DEBUGING(2, "Trasmitted: %d, Pkt Size:%d, Socket: %d\n",
                     transmitLen,
                     strlen(sb.str().c_str()),
                     sock);
        }
        catch(int e)
        {
            REPORTERROR("Failed to send packet. Error No: %d\n",e);
            return false;
        }
        
        return true;
        
    }
    
    /*
     * Regular socket receive
     */
    template <typename PacketClass>
    bool rcv_pkt(int sock, PacketClass *p)
    {
        std::stringbuf sb;
        char rcvbuf[MAX_BUFFER_SIZE];
        
        try
        {
            DEBUGING(1, "Expecting to receive packet at socket %d...\n", sock);
            
            int rcv_bytes = recv(sock, rcvbuf, MAX_BUFFER_SIZE,0);

            DEBUGING(2, "Received Buffer: %s, Bytes:%d, Socket %d...\n", rcvbuf, rcv_bytes, sock);
            
            if ( rcv_bytes < 0) { /* Get message */
                REPORTERROR("Receiving packet on socket %d", sock);
                return false;
            }

            // empty message
            if ( rcv_bytes == 0)
            {
                return false;
            }
            
            //initialize the stringbuf
            sb.str(std::string(rcvbuf));
            
            // deserialize the packet received
            std::istream istm(&sb);
            //p->deserialize(istm);
            p->deserialize(sb.str());

        }
        catch(int e)
        {
            REPORTERROR("Failed to receive packet. Error No: %d\n",e);
        }
        
        return true;
    }

    bool send_file(int sock, char* filepath);
    bool rcv_file(int sock, char* filepath);

    /***************************************
     *          ZMQ Socket
     ***************************************/
/*
    // Overloaded send method
    template <typename PacketClass>
    bool send_pkt(zmq::socket_t z_sock, PacketClass *p)
    {
        size_t transmitLen=0 , bytes_sent;
        std::ostringstream oss;

        try{
            p->serialize(oss);

            DEBUGING(2, "Sending Buffer: %s\n", oss.str().c_str());

            if ( !s_send(z_sock, oss.str()) )
            {
                // error while sending the message
                REPORTERROR("Sending a packet on ZMQ socket");
                return false;
            }

            DEBUGING(2, "Trasmitted: %d\n",
                     oss.str().length());
        }
        catch(int e)
        {
            REPORTERROR("Failed to send packet. Error No: %d\n",e);
            return false;
        }

        return true;
    }

     // Overloaded receive method
    template <typename PacketClass>
    bool rcv_pkt(zmq::socket_t z_sock, PacketClass *p)
    {
        try
        {
            DEBUGING(1, "Expecting to receive packet at socket...\n");

            zmq::message_t reply;
            z_sock.recv(&reply);

            // Get messgage
            if ( !reply.data()) {
                REPORTERROR("Receiving packet on ZMQ socket");
                return false;
            }

            std::istringstream iss(static_cast<char*>(reply.data()));
            // deserialize the packet received
            p->deserialize(iss);

            DEBUGING(1, "Received Buffer: %s, Size: %d", iss.str().c_str(), reply.size());
        }
        catch(int e)
        {
            REPORTERROR("Failed to receive packet. Error No: %d\n",e);
        }

        return true;
    }
    */
    
    // Logging
    void init_logfile(std::string dir="");
    
};

#endif /* smNode_h */
