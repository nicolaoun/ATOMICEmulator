cmake_minimum_required(VERSION 2.8)
project(ASM)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pthread")
add_compile_options(-std=c++11)

set(SOURCE_FILES
        Proto-ABD/ABD_protocol.hpp
        Proto-ABD/ABD_protocol.cpp
        Proto-ABD/ABDRWClient.cpp
        Proto-ABD/ABDRWClient.hpp
        Proto-ABD/ABDServer.cpp
        Proto-ABD/ABDServer.hpp

        Server/set_operations.hpp
        Server/set_operations.cpp
        Server/sm_common.cpp
        Server/sm_common.h
        Server/sm_node.cpp
        Server/sm_node.h
        Server/arguments.cpp 
	Server/arguments.h
	Server/filesystem.h
        Server/filesystem.cpp

        main.cpp
        )

include_directories(${CMAKE_SOURCE_DIR}/Proto-ABD)
include_directories(${CMAKE_SOURCE_DIR}/Server)

add_executable(asm ${SOURCE_FILES})
