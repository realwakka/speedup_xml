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
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/sidong/speedup

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/sidong/speedup

# Include any dependencies generated for this target.
include CMakeFiles/speedup.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/speedup.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/speedup.dir/flags.make

CMakeFiles/speedup.dir/xml_reader.cc.o: CMakeFiles/speedup.dir/flags.make
CMakeFiles/speedup.dir/xml_reader.cc.o: xml_reader.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/sidong/speedup/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/speedup.dir/xml_reader.cc.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/speedup.dir/xml_reader.cc.o -c /home/sidong/speedup/xml_reader.cc

CMakeFiles/speedup.dir/xml_reader.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/speedup.dir/xml_reader.cc.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/sidong/speedup/xml_reader.cc > CMakeFiles/speedup.dir/xml_reader.cc.i

CMakeFiles/speedup.dir/xml_reader.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/speedup.dir/xml_reader.cc.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/sidong/speedup/xml_reader.cc -o CMakeFiles/speedup.dir/xml_reader.cc.s

CMakeFiles/speedup.dir/xml_reader.cc.o.requires:

.PHONY : CMakeFiles/speedup.dir/xml_reader.cc.o.requires

CMakeFiles/speedup.dir/xml_reader.cc.o.provides: CMakeFiles/speedup.dir/xml_reader.cc.o.requires
	$(MAKE) -f CMakeFiles/speedup.dir/build.make CMakeFiles/speedup.dir/xml_reader.cc.o.provides.build
.PHONY : CMakeFiles/speedup.dir/xml_reader.cc.o.provides

CMakeFiles/speedup.dir/xml_reader.cc.o.provides.build: CMakeFiles/speedup.dir/xml_reader.cc.o


# Object files for target speedup
speedup_OBJECTS = \
"CMakeFiles/speedup.dir/xml_reader.cc.o"

# External object files for target speedup
speedup_EXTERNAL_OBJECTS =

libspeedup.so: CMakeFiles/speedup.dir/xml_reader.cc.o
libspeedup.so: CMakeFiles/speedup.dir/build.make
libspeedup.so: CMakeFiles/speedup.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/sidong/speedup/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libspeedup.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/speedup.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/speedup.dir/build: libspeedup.so

.PHONY : CMakeFiles/speedup.dir/build

CMakeFiles/speedup.dir/requires: CMakeFiles/speedup.dir/xml_reader.cc.o.requires

.PHONY : CMakeFiles/speedup.dir/requires

CMakeFiles/speedup.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/speedup.dir/cmake_clean.cmake
.PHONY : CMakeFiles/speedup.dir/clean

CMakeFiles/speedup.dir/depend:
	cd /home/sidong/speedup && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/sidong/speedup /home/sidong/speedup /home/sidong/speedup /home/sidong/speedup /home/sidong/speedup/CMakeFiles/speedup.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/speedup.dir/depend

