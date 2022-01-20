# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.21

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/dazhou/Desktop/artery

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/dazhou/Desktop/artery/build

# Utility rule file for run_mtits2017.

# Include any custom commands dependencies for this target.
include scenarios/CMakeFiles/run_mtits2017.dir/compiler_depend.make

# Include the progress variables for this target.
include scenarios/CMakeFiles/run_mtits2017.dir/progress.make

scenarios/CMakeFiles/run_mtits2017:
	cd /home/dazhou/Desktop/artery/scenarios/mt-its2017 && /home/dazhou/Desktop/omnetpp-5.6.2/bin/opp_run_dbg -n /home/dazhou/Desktop/artery/src/artery:/home/dazhou/Desktop/artery/src/traci:/home/dazhou/Desktop/artery/extern/veins/examples/veins:/home/dazhou/Desktop/artery/extern/veins/src/veins:/home/dazhou/Desktop/artery/extern/inet/src:/home/dazhou/Desktop/artery/extern/inet/examples:/home/dazhou/Desktop/artery/extern/inet/tutorials:/home/dazhou/Desktop/artery/extern/inet/showcases -l /home/dazhou/Desktop/artery/build/src/artery/envmod/libartery_envmod.so -l /home/dazhou/Desktop/artery/build/scenarios/highway-police/libartery_police.so -l /home/dazhou/Desktop/artery/build/src/artery/envmod/libartery_envmod.so -l /home/dazhou/Desktop/artery/build/src/artery/storyboard/libartery_storyboard.so -l /home/dazhou/Desktop/artery/build/extern/libINET.so -l /home/dazhou/Desktop/artery/build/extern/libveins.so -l /home/dazhou/Desktop/artery/build/src/traci/libtraci.so -l /home/dazhou/Desktop/artery/build/src/artery/libartery_core.so omnetpp.ini

run_mtits2017: scenarios/CMakeFiles/run_mtits2017
run_mtits2017: scenarios/CMakeFiles/run_mtits2017.dir/build.make
.PHONY : run_mtits2017

# Rule to build all files generated by this target.
scenarios/CMakeFiles/run_mtits2017.dir/build: run_mtits2017
.PHONY : scenarios/CMakeFiles/run_mtits2017.dir/build

scenarios/CMakeFiles/run_mtits2017.dir/clean:
	cd /home/dazhou/Desktop/artery/build/scenarios && $(CMAKE_COMMAND) -P CMakeFiles/run_mtits2017.dir/cmake_clean.cmake
.PHONY : scenarios/CMakeFiles/run_mtits2017.dir/clean

scenarios/CMakeFiles/run_mtits2017.dir/depend:
	cd /home/dazhou/Desktop/artery/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/dazhou/Desktop/artery /home/dazhou/Desktop/artery/scenarios /home/dazhou/Desktop/artery/build /home/dazhou/Desktop/artery/build/scenarios /home/dazhou/Desktop/artery/build/scenarios/CMakeFiles/run_mtits2017.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : scenarios/CMakeFiles/run_mtits2017.dir/depend

