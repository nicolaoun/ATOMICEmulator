# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /Applications/CMake.app/Contents/bin/cmake

# The command to remove a file.
RM = /Applications/CMake.app/Contents/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator

# Include any dependencies generated for this target.
include CMakeFiles/asm.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/asm.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/asm.dir/flags.make

CMakeFiles/asm.dir/Protocols/ABD/abd_protocol.cpp.o: CMakeFiles/asm.dir/flags.make
CMakeFiles/asm.dir/Protocols/ABD/abd_protocol.cpp.o: Protocols/ABD/abd_protocol.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/asm.dir/Protocols/ABD/abd_protocol.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/asm.dir/Protocols/ABD/abd_protocol.cpp.o -c /Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator/Protocols/ABD/abd_protocol.cpp

CMakeFiles/asm.dir/Protocols/ABD/abd_protocol.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/asm.dir/Protocols/ABD/abd_protocol.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator/Protocols/ABD/abd_protocol.cpp > CMakeFiles/asm.dir/Protocols/ABD/abd_protocol.cpp.i

CMakeFiles/asm.dir/Protocols/ABD/abd_protocol.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/asm.dir/Protocols/ABD/abd_protocol.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator/Protocols/ABD/abd_protocol.cpp -o CMakeFiles/asm.dir/Protocols/ABD/abd_protocol.cpp.s

CMakeFiles/asm.dir/Protocols/ABD/abd_protocol.cpp.o.requires:

.PHONY : CMakeFiles/asm.dir/Protocols/ABD/abd_protocol.cpp.o.requires

CMakeFiles/asm.dir/Protocols/ABD/abd_protocol.cpp.o.provides: CMakeFiles/asm.dir/Protocols/ABD/abd_protocol.cpp.o.requires
	$(MAKE) -f CMakeFiles/asm.dir/build.make CMakeFiles/asm.dir/Protocols/ABD/abd_protocol.cpp.o.provides.build
.PHONY : CMakeFiles/asm.dir/Protocols/ABD/abd_protocol.cpp.o.provides

CMakeFiles/asm.dir/Protocols/ABD/abd_protocol.cpp.o.provides.build: CMakeFiles/asm.dir/Protocols/ABD/abd_protocol.cpp.o


CMakeFiles/asm.dir/Protocols/ABD/abd_client.cpp.o: CMakeFiles/asm.dir/flags.make
CMakeFiles/asm.dir/Protocols/ABD/abd_client.cpp.o: Protocols/ABD/abd_client.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/asm.dir/Protocols/ABD/abd_client.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/asm.dir/Protocols/ABD/abd_client.cpp.o -c /Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator/Protocols/ABD/abd_client.cpp

CMakeFiles/asm.dir/Protocols/ABD/abd_client.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/asm.dir/Protocols/ABD/abd_client.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator/Protocols/ABD/abd_client.cpp > CMakeFiles/asm.dir/Protocols/ABD/abd_client.cpp.i

CMakeFiles/asm.dir/Protocols/ABD/abd_client.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/asm.dir/Protocols/ABD/abd_client.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator/Protocols/ABD/abd_client.cpp -o CMakeFiles/asm.dir/Protocols/ABD/abd_client.cpp.s

CMakeFiles/asm.dir/Protocols/ABD/abd_client.cpp.o.requires:

.PHONY : CMakeFiles/asm.dir/Protocols/ABD/abd_client.cpp.o.requires

CMakeFiles/asm.dir/Protocols/ABD/abd_client.cpp.o.provides: CMakeFiles/asm.dir/Protocols/ABD/abd_client.cpp.o.requires
	$(MAKE) -f CMakeFiles/asm.dir/build.make CMakeFiles/asm.dir/Protocols/ABD/abd_client.cpp.o.provides.build
.PHONY : CMakeFiles/asm.dir/Protocols/ABD/abd_client.cpp.o.provides

CMakeFiles/asm.dir/Protocols/ABD/abd_client.cpp.o.provides.build: CMakeFiles/asm.dir/Protocols/ABD/abd_client.cpp.o


CMakeFiles/asm.dir/Protocols/ABD/abd_server.cpp.o: CMakeFiles/asm.dir/flags.make
CMakeFiles/asm.dir/Protocols/ABD/abd_server.cpp.o: Protocols/ABD/abd_server.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/asm.dir/Protocols/ABD/abd_server.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/asm.dir/Protocols/ABD/abd_server.cpp.o -c /Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator/Protocols/ABD/abd_server.cpp

CMakeFiles/asm.dir/Protocols/ABD/abd_server.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/asm.dir/Protocols/ABD/abd_server.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator/Protocols/ABD/abd_server.cpp > CMakeFiles/asm.dir/Protocols/ABD/abd_server.cpp.i

CMakeFiles/asm.dir/Protocols/ABD/abd_server.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/asm.dir/Protocols/ABD/abd_server.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator/Protocols/ABD/abd_server.cpp -o CMakeFiles/asm.dir/Protocols/ABD/abd_server.cpp.s

CMakeFiles/asm.dir/Protocols/ABD/abd_server.cpp.o.requires:

.PHONY : CMakeFiles/asm.dir/Protocols/ABD/abd_server.cpp.o.requires

CMakeFiles/asm.dir/Protocols/ABD/abd_server.cpp.o.provides: CMakeFiles/asm.dir/Protocols/ABD/abd_server.cpp.o.requires
	$(MAKE) -f CMakeFiles/asm.dir/build.make CMakeFiles/asm.dir/Protocols/ABD/abd_server.cpp.o.provides.build
.PHONY : CMakeFiles/asm.dir/Protocols/ABD/abd_server.cpp.o.provides

CMakeFiles/asm.dir/Protocols/ABD/abd_server.cpp.o.provides.build: CMakeFiles/asm.dir/Protocols/ABD/abd_server.cpp.o


CMakeFiles/asm.dir/Utilities/set_operations.cpp.o: CMakeFiles/asm.dir/flags.make
CMakeFiles/asm.dir/Utilities/set_operations.cpp.o: Utilities/set_operations.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/asm.dir/Utilities/set_operations.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/asm.dir/Utilities/set_operations.cpp.o -c /Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator/Utilities/set_operations.cpp

CMakeFiles/asm.dir/Utilities/set_operations.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/asm.dir/Utilities/set_operations.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator/Utilities/set_operations.cpp > CMakeFiles/asm.dir/Utilities/set_operations.cpp.i

CMakeFiles/asm.dir/Utilities/set_operations.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/asm.dir/Utilities/set_operations.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator/Utilities/set_operations.cpp -o CMakeFiles/asm.dir/Utilities/set_operations.cpp.s

CMakeFiles/asm.dir/Utilities/set_operations.cpp.o.requires:

.PHONY : CMakeFiles/asm.dir/Utilities/set_operations.cpp.o.requires

CMakeFiles/asm.dir/Utilities/set_operations.cpp.o.provides: CMakeFiles/asm.dir/Utilities/set_operations.cpp.o.requires
	$(MAKE) -f CMakeFiles/asm.dir/build.make CMakeFiles/asm.dir/Utilities/set_operations.cpp.o.provides.build
.PHONY : CMakeFiles/asm.dir/Utilities/set_operations.cpp.o.provides

CMakeFiles/asm.dir/Utilities/set_operations.cpp.o.provides.build: CMakeFiles/asm.dir/Utilities/set_operations.cpp.o


CMakeFiles/asm.dir/Utilities/sm_common.cpp.o: CMakeFiles/asm.dir/flags.make
CMakeFiles/asm.dir/Utilities/sm_common.cpp.o: Utilities/sm_common.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/asm.dir/Utilities/sm_common.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/asm.dir/Utilities/sm_common.cpp.o -c /Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator/Utilities/sm_common.cpp

CMakeFiles/asm.dir/Utilities/sm_common.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/asm.dir/Utilities/sm_common.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator/Utilities/sm_common.cpp > CMakeFiles/asm.dir/Utilities/sm_common.cpp.i

CMakeFiles/asm.dir/Utilities/sm_common.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/asm.dir/Utilities/sm_common.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator/Utilities/sm_common.cpp -o CMakeFiles/asm.dir/Utilities/sm_common.cpp.s

CMakeFiles/asm.dir/Utilities/sm_common.cpp.o.requires:

.PHONY : CMakeFiles/asm.dir/Utilities/sm_common.cpp.o.requires

CMakeFiles/asm.dir/Utilities/sm_common.cpp.o.provides: CMakeFiles/asm.dir/Utilities/sm_common.cpp.o.requires
	$(MAKE) -f CMakeFiles/asm.dir/build.make CMakeFiles/asm.dir/Utilities/sm_common.cpp.o.provides.build
.PHONY : CMakeFiles/asm.dir/Utilities/sm_common.cpp.o.provides

CMakeFiles/asm.dir/Utilities/sm_common.cpp.o.provides.build: CMakeFiles/asm.dir/Utilities/sm_common.cpp.o


CMakeFiles/asm.dir/Utilities/sm_node.cpp.o: CMakeFiles/asm.dir/flags.make
CMakeFiles/asm.dir/Utilities/sm_node.cpp.o: Utilities/sm_node.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/asm.dir/Utilities/sm_node.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/asm.dir/Utilities/sm_node.cpp.o -c /Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator/Utilities/sm_node.cpp

CMakeFiles/asm.dir/Utilities/sm_node.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/asm.dir/Utilities/sm_node.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator/Utilities/sm_node.cpp > CMakeFiles/asm.dir/Utilities/sm_node.cpp.i

CMakeFiles/asm.dir/Utilities/sm_node.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/asm.dir/Utilities/sm_node.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator/Utilities/sm_node.cpp -o CMakeFiles/asm.dir/Utilities/sm_node.cpp.s

CMakeFiles/asm.dir/Utilities/sm_node.cpp.o.requires:

.PHONY : CMakeFiles/asm.dir/Utilities/sm_node.cpp.o.requires

CMakeFiles/asm.dir/Utilities/sm_node.cpp.o.provides: CMakeFiles/asm.dir/Utilities/sm_node.cpp.o.requires
	$(MAKE) -f CMakeFiles/asm.dir/build.make CMakeFiles/asm.dir/Utilities/sm_node.cpp.o.provides.build
.PHONY : CMakeFiles/asm.dir/Utilities/sm_node.cpp.o.provides

CMakeFiles/asm.dir/Utilities/sm_node.cpp.o.provides.build: CMakeFiles/asm.dir/Utilities/sm_node.cpp.o


CMakeFiles/asm.dir/Utilities/arguments.cpp.o: CMakeFiles/asm.dir/flags.make
CMakeFiles/asm.dir/Utilities/arguments.cpp.o: Utilities/arguments.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/asm.dir/Utilities/arguments.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/asm.dir/Utilities/arguments.cpp.o -c /Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator/Utilities/arguments.cpp

CMakeFiles/asm.dir/Utilities/arguments.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/asm.dir/Utilities/arguments.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator/Utilities/arguments.cpp > CMakeFiles/asm.dir/Utilities/arguments.cpp.i

CMakeFiles/asm.dir/Utilities/arguments.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/asm.dir/Utilities/arguments.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator/Utilities/arguments.cpp -o CMakeFiles/asm.dir/Utilities/arguments.cpp.s

CMakeFiles/asm.dir/Utilities/arguments.cpp.o.requires:

.PHONY : CMakeFiles/asm.dir/Utilities/arguments.cpp.o.requires

CMakeFiles/asm.dir/Utilities/arguments.cpp.o.provides: CMakeFiles/asm.dir/Utilities/arguments.cpp.o.requires
	$(MAKE) -f CMakeFiles/asm.dir/build.make CMakeFiles/asm.dir/Utilities/arguments.cpp.o.provides.build
.PHONY : CMakeFiles/asm.dir/Utilities/arguments.cpp.o.provides

CMakeFiles/asm.dir/Utilities/arguments.cpp.o.provides.build: CMakeFiles/asm.dir/Utilities/arguments.cpp.o


CMakeFiles/asm.dir/Utilities/filesystem.cpp.o: CMakeFiles/asm.dir/flags.make
CMakeFiles/asm.dir/Utilities/filesystem.cpp.o: Utilities/filesystem.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/asm.dir/Utilities/filesystem.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/asm.dir/Utilities/filesystem.cpp.o -c /Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator/Utilities/filesystem.cpp

CMakeFiles/asm.dir/Utilities/filesystem.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/asm.dir/Utilities/filesystem.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator/Utilities/filesystem.cpp > CMakeFiles/asm.dir/Utilities/filesystem.cpp.i

CMakeFiles/asm.dir/Utilities/filesystem.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/asm.dir/Utilities/filesystem.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator/Utilities/filesystem.cpp -o CMakeFiles/asm.dir/Utilities/filesystem.cpp.s

CMakeFiles/asm.dir/Utilities/filesystem.cpp.o.requires:

.PHONY : CMakeFiles/asm.dir/Utilities/filesystem.cpp.o.requires

CMakeFiles/asm.dir/Utilities/filesystem.cpp.o.provides: CMakeFiles/asm.dir/Utilities/filesystem.cpp.o.requires
	$(MAKE) -f CMakeFiles/asm.dir/build.make CMakeFiles/asm.dir/Utilities/filesystem.cpp.o.provides.build
.PHONY : CMakeFiles/asm.dir/Utilities/filesystem.cpp.o.provides

CMakeFiles/asm.dir/Utilities/filesystem.cpp.o.provides.build: CMakeFiles/asm.dir/Utilities/filesystem.cpp.o


CMakeFiles/asm.dir/main.cpp.o: CMakeFiles/asm.dir/flags.make
CMakeFiles/asm.dir/main.cpp.o: main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object CMakeFiles/asm.dir/main.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/asm.dir/main.cpp.o -c /Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator/main.cpp

CMakeFiles/asm.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/asm.dir/main.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator/main.cpp > CMakeFiles/asm.dir/main.cpp.i

CMakeFiles/asm.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/asm.dir/main.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator/main.cpp -o CMakeFiles/asm.dir/main.cpp.s

CMakeFiles/asm.dir/main.cpp.o.requires:

.PHONY : CMakeFiles/asm.dir/main.cpp.o.requires

CMakeFiles/asm.dir/main.cpp.o.provides: CMakeFiles/asm.dir/main.cpp.o.requires
	$(MAKE) -f CMakeFiles/asm.dir/build.make CMakeFiles/asm.dir/main.cpp.o.provides.build
.PHONY : CMakeFiles/asm.dir/main.cpp.o.provides

CMakeFiles/asm.dir/main.cpp.o.provides.build: CMakeFiles/asm.dir/main.cpp.o


# Object files for target asm
asm_OBJECTS = \
"CMakeFiles/asm.dir/Protocols/ABD/abd_protocol.cpp.o" \
"CMakeFiles/asm.dir/Protocols/ABD/abd_client.cpp.o" \
"CMakeFiles/asm.dir/Protocols/ABD/abd_server.cpp.o" \
"CMakeFiles/asm.dir/Utilities/set_operations.cpp.o" \
"CMakeFiles/asm.dir/Utilities/sm_common.cpp.o" \
"CMakeFiles/asm.dir/Utilities/sm_node.cpp.o" \
"CMakeFiles/asm.dir/Utilities/arguments.cpp.o" \
"CMakeFiles/asm.dir/Utilities/filesystem.cpp.o" \
"CMakeFiles/asm.dir/main.cpp.o"

# External object files for target asm
asm_EXTERNAL_OBJECTS =

asm: CMakeFiles/asm.dir/Protocols/ABD/abd_protocol.cpp.o
asm: CMakeFiles/asm.dir/Protocols/ABD/abd_client.cpp.o
asm: CMakeFiles/asm.dir/Protocols/ABD/abd_server.cpp.o
asm: CMakeFiles/asm.dir/Utilities/set_operations.cpp.o
asm: CMakeFiles/asm.dir/Utilities/sm_common.cpp.o
asm: CMakeFiles/asm.dir/Utilities/sm_node.cpp.o
asm: CMakeFiles/asm.dir/Utilities/arguments.cpp.o
asm: CMakeFiles/asm.dir/Utilities/filesystem.cpp.o
asm: CMakeFiles/asm.dir/main.cpp.o
asm: CMakeFiles/asm.dir/build.make
asm: CMakeFiles/asm.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Linking CXX executable asm"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/asm.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/asm.dir/build: asm

.PHONY : CMakeFiles/asm.dir/build

CMakeFiles/asm.dir/requires: CMakeFiles/asm.dir/Protocols/ABD/abd_protocol.cpp.o.requires
CMakeFiles/asm.dir/requires: CMakeFiles/asm.dir/Protocols/ABD/abd_client.cpp.o.requires
CMakeFiles/asm.dir/requires: CMakeFiles/asm.dir/Protocols/ABD/abd_server.cpp.o.requires
CMakeFiles/asm.dir/requires: CMakeFiles/asm.dir/Utilities/set_operations.cpp.o.requires
CMakeFiles/asm.dir/requires: CMakeFiles/asm.dir/Utilities/sm_common.cpp.o.requires
CMakeFiles/asm.dir/requires: CMakeFiles/asm.dir/Utilities/sm_node.cpp.o.requires
CMakeFiles/asm.dir/requires: CMakeFiles/asm.dir/Utilities/arguments.cpp.o.requires
CMakeFiles/asm.dir/requires: CMakeFiles/asm.dir/Utilities/filesystem.cpp.o.requires
CMakeFiles/asm.dir/requires: CMakeFiles/asm.dir/main.cpp.o.requires

.PHONY : CMakeFiles/asm.dir/requires

CMakeFiles/asm.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/asm.dir/cmake_clean.cmake
.PHONY : CMakeFiles/asm.dir/clean

CMakeFiles/asm.dir/depend:
	cd /Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator /Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator /Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator /Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator /Users/nicolasnicolaou/Documents/workspace/ATOMICEmulator/CMakeFiles/asm.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/asm.dir/depend

