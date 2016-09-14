//
//  main.cpp
//  SharedMemory_Simulator
//
//  Created by nicolas on 12/5/15.
//  Copyright © 2015 Imdea Networks. All rights reserved.
//

#include <iostream>
//#include "Proto-ABD/ABDRWClient.hpp"
//#include "Proto-ABD/ABDReader.hpp"
#include "ABDRWClient.hpp"
#include "ABDServer.hpp"
#include "arguments.h"
#include <string>

using namespace std;

void in_error(std::string e)
{
  std::cout << "Input Error: " << e << "\n\n";
  exit(1);
}

int main(int argc, char** argv)
{
  // Wrap everything in a try block.  Do this every time,
  // because exceptions will be thrown for problems.
  try {
	  Arguments args;
	  args.parseArguments(argc, argv);

	  std::cout << "\n*********************************************************\n";
	  std::cout << "Initializing "<< args.type <<" process ID: "<< args.nodeid << "\n";
	  std::cout << "*********************************************************\n\n";

      if ( args.type == "read")
      {
          if (args.objid == "" ) {
              in_error("Object identifier not defined or is empty. Use -o option to define the object to read.");
          }
          
          //ABDRWClient *r = new ABDRWClient (args.nodeid, READER, 10, 10);
          ABDRWClient r(args.nodeid, READER, args.path);
          r.set_debug_lvl(args.debuglvl);
          
          //show operation menu - "yes" or "y":show menu
          if (args.menu == "yes" || args.menu == "Yes" || args.menu == "y" || args.menu == "Y") {
              int choice = 0;
              
              while (choice!=2) {
                  
                  std::cout << "\n\n***** Menu *****\n";
                  std::cout << "1. Read\n";
                  std::cout << "2. Exit\n";
                  std::cout << "Choice:";
                  std::cin >> choice;
                  
                  switch (choice) {
                      case 1:
                          std::cout << "\nReading....\n";
                          
                          r.invoke_op(args.objid, ".");
                          break;
                          
                      default:
                          std::cout << "Exiting....\n\n";
                          break;
                  }
                  
              }
          }
          else //just invoke a read operation
          {
              r.invoke_op(args.objid, ".");
              exit(EXIT_SUCCESS);
          }
      }

      if ( args.type == "write" )
      {
          if (args.objid == "" ) {
              in_error("Object identifier not defined. Use -o option to define the object to modify.");
          }
          
          //ABDWriter *w = new ABDWriter (args.nodeid, 10, 10);
          //!!ABDRWClient *w = new ABDRWClient (args.nodeid, WRITER, 10, 10);
          ABDRWClient w(args.nodeid, WRITER, args.path);
          w.set_debug_lvl(args.debuglvl);
          
          int choice = 0;
          
          //show operation menu - "yes" or "y":show menu
          if (args.menu == "yes" || args.menu == "Yes" || args.menu == "y" || args.menu == "Y") {
              while (choice!=2) {
                  
                  std::cout << "\n\n***** Menu *****\n";
                  std::cout << "1. Write\n";
                  std::cout << "2. Exit\n";
                  std::cout << "Choice:";
                  std::cin >> choice;
                  
                  switch (choice) {
                      case 1:
                          std::cout << "\nWriting....\n";
                          
                          w.invoke_op(args.objid, ".");
                          //w->auto_write(0,5.0,10);
                          break;
                          
                      default:
                          std::cout << "Exiting....\n\n";
                          break;
                  }
              }
          }
          else
          {
              w.invoke_op(args.objid, ".");
              if ( w.has_commited() )
              {
                  exit(EXIT_SUCCESS);
              }
              else
              {
                  exit(EXIT_FAILURE);
              }
          }
      }
          
	  
	  if ( args.type == "serve" )
	    {
	      if (args.port == 0 ) {
		in_error("Expected port number for the Server. Use -p option.");
	      }
	      
	      //!!ABDServer *s = new ABDServer (args.nodeid, args.port);
	      ABDServer s(args.nodeid, args.port);
          s.set_debug_lvl(args.debuglvl);
	      s.start();
	    }
	  
  } catch (const std::exception &e) {
    std::cerr << "ASM : " << e.what() << std::endl;
  }
}

