# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.5

# Default target executed when no arguments are given to make.
default_target: all

.PHONY : default_target

# Allow only one "make -f Makefile2" at a time, but pass parallelism.
.NOTPARALLEL:


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

#=============================================================================
# Targets provided globally by CMake.

# Special rule for the target rebuild_cache
rebuild_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "Running CMake to regenerate build system..."
	/usr/bin/cmake -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR)
.PHONY : rebuild_cache

# Special rule for the target rebuild_cache
rebuild_cache/fast: rebuild_cache

.PHONY : rebuild_cache/fast

# Special rule for the target edit_cache
edit_cache:
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --cyan "No interactive CMake dialog available..."
	/usr/bin/cmake -E echo No\ interactive\ CMake\ dialog\ available.
.PHONY : edit_cache

# Special rule for the target edit_cache
edit_cache/fast: edit_cache

.PHONY : edit_cache/fast

# The main all target
all: cmake_check_build_system
	$(CMAKE_COMMAND) -E cmake_progress_start /home/sidong/speedup/CMakeFiles /home/sidong/speedup/CMakeFiles/progress.marks
	$(MAKE) -f CMakeFiles/Makefile2 all
	$(CMAKE_COMMAND) -E cmake_progress_start /home/sidong/speedup/CMakeFiles 0
.PHONY : all

# The main clean target
clean:
	$(MAKE) -f CMakeFiles/Makefile2 clean
.PHONY : clean

# The main clean target
clean/fast: clean

.PHONY : clean/fast

# Prepare targets for installation.
preinstall: all
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall

# Prepare targets for installation.
preinstall/fast:
	$(MAKE) -f CMakeFiles/Makefile2 preinstall
.PHONY : preinstall/fast

# clear depends
depend:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 1
.PHONY : depend

#=============================================================================
# Target rules for targets named test

# Build rule for target.
test: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 test
.PHONY : test

# fast build rule for target.
test/fast:
	$(MAKE) -f CMakeFiles/test.dir/build.make CMakeFiles/test.dir/build
.PHONY : test/fast

#=============================================================================
# Target rules for targets named speedup

# Build rule for target.
speedup: cmake_check_build_system
	$(MAKE) -f CMakeFiles/Makefile2 speedup
.PHONY : speedup

# fast build rule for target.
speedup/fast:
	$(MAKE) -f CMakeFiles/speedup.dir/build.make CMakeFiles/speedup.dir/build
.PHONY : speedup/fast

test.o: test.cc.o

.PHONY : test.o

# target to build an object file
test.cc.o:
	$(MAKE) -f CMakeFiles/test.dir/build.make CMakeFiles/test.dir/test.cc.o
.PHONY : test.cc.o

test.i: test.cc.i

.PHONY : test.i

# target to preprocess a source file
test.cc.i:
	$(MAKE) -f CMakeFiles/test.dir/build.make CMakeFiles/test.dir/test.cc.i
.PHONY : test.cc.i

test.s: test.cc.s

.PHONY : test.s

# target to generate assembly for a file
test.cc.s:
	$(MAKE) -f CMakeFiles/test.dir/build.make CMakeFiles/test.dir/test.cc.s
.PHONY : test.cc.s

xml_reader.o: xml_reader.cc.o

.PHONY : xml_reader.o

# target to build an object file
xml_reader.cc.o:
	$(MAKE) -f CMakeFiles/speedup.dir/build.make CMakeFiles/speedup.dir/xml_reader.cc.o
.PHONY : xml_reader.cc.o

xml_reader.i: xml_reader.cc.i

.PHONY : xml_reader.i

# target to preprocess a source file
xml_reader.cc.i:
	$(MAKE) -f CMakeFiles/speedup.dir/build.make CMakeFiles/speedup.dir/xml_reader.cc.i
.PHONY : xml_reader.cc.i

xml_reader.s: xml_reader.cc.s

.PHONY : xml_reader.s

# target to generate assembly for a file
xml_reader.cc.s:
	$(MAKE) -f CMakeFiles/speedup.dir/build.make CMakeFiles/speedup.dir/xml_reader.cc.s
.PHONY : xml_reader.cc.s

# Help Target
help:
	@echo "The following are some of the valid targets for this Makefile:"
	@echo "... all (the default if no target is provided)"
	@echo "... clean"
	@echo "... depend"
	@echo "... rebuild_cache"
	@echo "... test"
	@echo "... edit_cache"
	@echo "... speedup"
	@echo "... test.o"
	@echo "... test.i"
	@echo "... test.s"
	@echo "... xml_reader.o"
	@echo "... xml_reader.i"
	@echo "... xml_reader.s"
.PHONY : help



#=============================================================================
# Special targets to cleanup operation of make.

# Special rule to run CMake to check the build system integrity.
# No rule that depends on this can have commands that come from listfiles
# because they might be regenerated.
cmake_check_build_system:
	$(CMAKE_COMMAND) -H$(CMAKE_SOURCE_DIR) -B$(CMAKE_BINARY_DIR) --check-build-system CMakeFiles/Makefile.cmake 0
.PHONY : cmake_check_build_system

