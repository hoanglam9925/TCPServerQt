# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

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
CMAKE_COMMAND = /snap/cmake/890/bin/cmake

# The command to remove a file.
RM = /snap/cmake/890/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/pi/Desktop/esmacat_master_software

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/pi/Desktop/Qt/TestV2Server/TCPV2Server

# Include any dependencies generated for this target.
include esmacat_applications/project_examples/sales_kit/CMakeFiles/sales_kit.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include esmacat_applications/project_examples/sales_kit/CMakeFiles/sales_kit.dir/compiler_depend.make

# Include the progress variables for this target.
include esmacat_applications/project_examples/sales_kit/CMakeFiles/sales_kit.dir/progress.make

# Include the compile flags for this target's objects.
include esmacat_applications/project_examples/sales_kit/CMakeFiles/sales_kit.dir/flags.make

esmacat_applications/project_examples/sales_kit/CMakeFiles/sales_kit.dir/main.cpp.o: esmacat_applications/project_examples/sales_kit/CMakeFiles/sales_kit.dir/flags.make
esmacat_applications/project_examples/sales_kit/CMakeFiles/sales_kit.dir/main.cpp.o: /home/pi/Desktop/esmacat_master_software/esmacat_applications/project_examples/sales_kit/main.cpp
esmacat_applications/project_examples/sales_kit/CMakeFiles/sales_kit.dir/main.cpp.o: esmacat_applications/project_examples/sales_kit/CMakeFiles/sales_kit.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/Qt/TestV2Server/TCPV2Server/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object esmacat_applications/project_examples/sales_kit/CMakeFiles/sales_kit.dir/main.cpp.o"
	cd /home/pi/Desktop/Qt/TestV2Server/TCPV2Server/esmacat_applications/project_examples/sales_kit && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT esmacat_applications/project_examples/sales_kit/CMakeFiles/sales_kit.dir/main.cpp.o -MF CMakeFiles/sales_kit.dir/main.cpp.o.d -o CMakeFiles/sales_kit.dir/main.cpp.o -c /home/pi/Desktop/esmacat_master_software/esmacat_applications/project_examples/sales_kit/main.cpp

esmacat_applications/project_examples/sales_kit/CMakeFiles/sales_kit.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sales_kit.dir/main.cpp.i"
	cd /home/pi/Desktop/Qt/TestV2Server/TCPV2Server/esmacat_applications/project_examples/sales_kit && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/esmacat_master_software/esmacat_applications/project_examples/sales_kit/main.cpp > CMakeFiles/sales_kit.dir/main.cpp.i

esmacat_applications/project_examples/sales_kit/CMakeFiles/sales_kit.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sales_kit.dir/main.cpp.s"
	cd /home/pi/Desktop/Qt/TestV2Server/TCPV2Server/esmacat_applications/project_examples/sales_kit && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/esmacat_master_software/esmacat_applications/project_examples/sales_kit/main.cpp -o CMakeFiles/sales_kit.dir/main.cpp.s

esmacat_applications/project_examples/sales_kit/CMakeFiles/sales_kit.dir/my_app.cpp.o: esmacat_applications/project_examples/sales_kit/CMakeFiles/sales_kit.dir/flags.make
esmacat_applications/project_examples/sales_kit/CMakeFiles/sales_kit.dir/my_app.cpp.o: /home/pi/Desktop/esmacat_master_software/esmacat_applications/project_examples/sales_kit/my_app.cpp
esmacat_applications/project_examples/sales_kit/CMakeFiles/sales_kit.dir/my_app.cpp.o: esmacat_applications/project_examples/sales_kit/CMakeFiles/sales_kit.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/pi/Desktop/Qt/TestV2Server/TCPV2Server/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object esmacat_applications/project_examples/sales_kit/CMakeFiles/sales_kit.dir/my_app.cpp.o"
	cd /home/pi/Desktop/Qt/TestV2Server/TCPV2Server/esmacat_applications/project_examples/sales_kit && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT esmacat_applications/project_examples/sales_kit/CMakeFiles/sales_kit.dir/my_app.cpp.o -MF CMakeFiles/sales_kit.dir/my_app.cpp.o.d -o CMakeFiles/sales_kit.dir/my_app.cpp.o -c /home/pi/Desktop/esmacat_master_software/esmacat_applications/project_examples/sales_kit/my_app.cpp

esmacat_applications/project_examples/sales_kit/CMakeFiles/sales_kit.dir/my_app.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sales_kit.dir/my_app.cpp.i"
	cd /home/pi/Desktop/Qt/TestV2Server/TCPV2Server/esmacat_applications/project_examples/sales_kit && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/pi/Desktop/esmacat_master_software/esmacat_applications/project_examples/sales_kit/my_app.cpp > CMakeFiles/sales_kit.dir/my_app.cpp.i

esmacat_applications/project_examples/sales_kit/CMakeFiles/sales_kit.dir/my_app.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sales_kit.dir/my_app.cpp.s"
	cd /home/pi/Desktop/Qt/TestV2Server/TCPV2Server/esmacat_applications/project_examples/sales_kit && /usr/bin/g++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/pi/Desktop/esmacat_master_software/esmacat_applications/project_examples/sales_kit/my_app.cpp -o CMakeFiles/sales_kit.dir/my_app.cpp.s

# Object files for target sales_kit
sales_kit_OBJECTS = \
"CMakeFiles/sales_kit.dir/main.cpp.o" \
"CMakeFiles/sales_kit.dir/my_app.cpp.o"

# External object files for target sales_kit
sales_kit_EXTERNAL_OBJECTS =

esmacat_applications/project_examples/sales_kit/sales_kit: esmacat_applications/project_examples/sales_kit/CMakeFiles/sales_kit.dir/main.cpp.o
esmacat_applications/project_examples/sales_kit/sales_kit: esmacat_applications/project_examples/sales_kit/CMakeFiles/sales_kit.dir/my_app.cpp.o
esmacat_applications/project_examples/sales_kit/sales_kit: esmacat_applications/project_examples/sales_kit/CMakeFiles/sales_kit.dir/build.make
esmacat_applications/project_examples/sales_kit/sales_kit: libethercat_driver.a
esmacat_applications/project_examples/sales_kit/sales_kit: libesmacat.a
esmacat_applications/project_examples/sales_kit/sales_kit: libethercat_driver.a
esmacat_applications/project_examples/sales_kit/sales_kit: esmacat_applications/project_examples/sales_kit/CMakeFiles/sales_kit.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/pi/Desktop/Qt/TestV2Server/TCPV2Server/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable sales_kit"
	cd /home/pi/Desktop/Qt/TestV2Server/TCPV2Server/esmacat_applications/project_examples/sales_kit && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/sales_kit.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
esmacat_applications/project_examples/sales_kit/CMakeFiles/sales_kit.dir/build: esmacat_applications/project_examples/sales_kit/sales_kit
.PHONY : esmacat_applications/project_examples/sales_kit/CMakeFiles/sales_kit.dir/build

esmacat_applications/project_examples/sales_kit/CMakeFiles/sales_kit.dir/clean:
	cd /home/pi/Desktop/Qt/TestV2Server/TCPV2Server/esmacat_applications/project_examples/sales_kit && $(CMAKE_COMMAND) -P CMakeFiles/sales_kit.dir/cmake_clean.cmake
.PHONY : esmacat_applications/project_examples/sales_kit/CMakeFiles/sales_kit.dir/clean

esmacat_applications/project_examples/sales_kit/CMakeFiles/sales_kit.dir/depend:
	cd /home/pi/Desktop/Qt/TestV2Server/TCPV2Server && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/pi/Desktop/esmacat_master_software /home/pi/Desktop/esmacat_master_software/esmacat_applications/project_examples/sales_kit /home/pi/Desktop/Qt/TestV2Server/TCPV2Server /home/pi/Desktop/Qt/TestV2Server/TCPV2Server/esmacat_applications/project_examples/sales_kit /home/pi/Desktop/Qt/TestV2Server/TCPV2Server/esmacat_applications/project_examples/sales_kit/CMakeFiles/sales_kit.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : esmacat_applications/project_examples/sales_kit/CMakeFiles/sales_kit.dir/depend
