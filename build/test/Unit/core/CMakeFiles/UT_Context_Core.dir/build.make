# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.2

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
CMAKE_SOURCE_DIR = /home/daniel/Workspace/Locations

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/daniel/Workspace/Locations/build

# Include any dependencies generated for this target.
include test/Unit/core/CMakeFiles/UT_Context_Core.dir/depend.make

# Include the progress variables for this target.
include test/Unit/core/CMakeFiles/UT_Context_Core.dir/progress.make

# Include the compile flags for this target's objects.
include test/Unit/core/CMakeFiles/UT_Context_Core.dir/flags.make

test/Unit/core/CMakeFiles/UT_Context_Core.dir/TestUniqueCollection.cpp.o: test/Unit/core/CMakeFiles/UT_Context_Core.dir/flags.make
test/Unit/core/CMakeFiles/UT_Context_Core.dir/TestUniqueCollection.cpp.o: ../test/Unit/core/TestUniqueCollection.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/daniel/Workspace/Locations/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/Unit/core/CMakeFiles/UT_Context_Core.dir/TestUniqueCollection.cpp.o"
	cd /home/daniel/Workspace/Locations/build/test/Unit/core && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/UT_Context_Core.dir/TestUniqueCollection.cpp.o -c /home/daniel/Workspace/Locations/test/Unit/core/TestUniqueCollection.cpp

test/Unit/core/CMakeFiles/UT_Context_Core.dir/TestUniqueCollection.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/UT_Context_Core.dir/TestUniqueCollection.cpp.i"
	cd /home/daniel/Workspace/Locations/build/test/Unit/core && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/daniel/Workspace/Locations/test/Unit/core/TestUniqueCollection.cpp > CMakeFiles/UT_Context_Core.dir/TestUniqueCollection.cpp.i

test/Unit/core/CMakeFiles/UT_Context_Core.dir/TestUniqueCollection.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/UT_Context_Core.dir/TestUniqueCollection.cpp.s"
	cd /home/daniel/Workspace/Locations/build/test/Unit/core && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/daniel/Workspace/Locations/test/Unit/core/TestUniqueCollection.cpp -o CMakeFiles/UT_Context_Core.dir/TestUniqueCollection.cpp.s

test/Unit/core/CMakeFiles/UT_Context_Core.dir/TestUniqueCollection.cpp.o.requires:
.PHONY : test/Unit/core/CMakeFiles/UT_Context_Core.dir/TestUniqueCollection.cpp.o.requires

test/Unit/core/CMakeFiles/UT_Context_Core.dir/TestUniqueCollection.cpp.o.provides: test/Unit/core/CMakeFiles/UT_Context_Core.dir/TestUniqueCollection.cpp.o.requires
	$(MAKE) -f test/Unit/core/CMakeFiles/UT_Context_Core.dir/build.make test/Unit/core/CMakeFiles/UT_Context_Core.dir/TestUniqueCollection.cpp.o.provides.build
.PHONY : test/Unit/core/CMakeFiles/UT_Context_Core.dir/TestUniqueCollection.cpp.o.provides

test/Unit/core/CMakeFiles/UT_Context_Core.dir/TestUniqueCollection.cpp.o.provides.build: test/Unit/core/CMakeFiles/UT_Context_Core.dir/TestUniqueCollection.cpp.o

test/Unit/core/CMakeFiles/UT_Context_Core.dir/__/main.cpp.o: test/Unit/core/CMakeFiles/UT_Context_Core.dir/flags.make
test/Unit/core/CMakeFiles/UT_Context_Core.dir/__/main.cpp.o: ../test/Unit/main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /home/daniel/Workspace/Locations/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/Unit/core/CMakeFiles/UT_Context_Core.dir/__/main.cpp.o"
	cd /home/daniel/Workspace/Locations/build/test/Unit/core && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/UT_Context_Core.dir/__/main.cpp.o -c /home/daniel/Workspace/Locations/test/Unit/main.cpp

test/Unit/core/CMakeFiles/UT_Context_Core.dir/__/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/UT_Context_Core.dir/__/main.cpp.i"
	cd /home/daniel/Workspace/Locations/build/test/Unit/core && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /home/daniel/Workspace/Locations/test/Unit/main.cpp > CMakeFiles/UT_Context_Core.dir/__/main.cpp.i

test/Unit/core/CMakeFiles/UT_Context_Core.dir/__/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/UT_Context_Core.dir/__/main.cpp.s"
	cd /home/daniel/Workspace/Locations/build/test/Unit/core && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /home/daniel/Workspace/Locations/test/Unit/main.cpp -o CMakeFiles/UT_Context_Core.dir/__/main.cpp.s

test/Unit/core/CMakeFiles/UT_Context_Core.dir/__/main.cpp.o.requires:
.PHONY : test/Unit/core/CMakeFiles/UT_Context_Core.dir/__/main.cpp.o.requires

test/Unit/core/CMakeFiles/UT_Context_Core.dir/__/main.cpp.o.provides: test/Unit/core/CMakeFiles/UT_Context_Core.dir/__/main.cpp.o.requires
	$(MAKE) -f test/Unit/core/CMakeFiles/UT_Context_Core.dir/build.make test/Unit/core/CMakeFiles/UT_Context_Core.dir/__/main.cpp.o.provides.build
.PHONY : test/Unit/core/CMakeFiles/UT_Context_Core.dir/__/main.cpp.o.provides

test/Unit/core/CMakeFiles/UT_Context_Core.dir/__/main.cpp.o.provides.build: test/Unit/core/CMakeFiles/UT_Context_Core.dir/__/main.cpp.o

# Object files for target UT_Context_Core
UT_Context_Core_OBJECTS = \
"CMakeFiles/UT_Context_Core.dir/TestUniqueCollection.cpp.o" \
"CMakeFiles/UT_Context_Core.dir/__/main.cpp.o"

# External object files for target UT_Context_Core
UT_Context_Core_EXTERNAL_OBJECTS =

test/Unit/core/UT_Context_Core: test/Unit/core/CMakeFiles/UT_Context_Core.dir/TestUniqueCollection.cpp.o
test/Unit/core/UT_Context_Core: test/Unit/core/CMakeFiles/UT_Context_Core.dir/__/main.cpp.o
test/Unit/core/UT_Context_Core: test/Unit/core/CMakeFiles/UT_Context_Core.dir/build.make
test/Unit/core/UT_Context_Core: src/core/libContext_Core.a
test/Unit/core/UT_Context_Core: test/gtest/src/gtest-build/libgtest.a
test/Unit/core/UT_Context_Core: test/gmock/src/gmock-build/libgmock.a
test/Unit/core/UT_Context_Core: test/Unit/core/CMakeFiles/UT_Context_Core.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable UT_Context_Core"
	cd /home/daniel/Workspace/Locations/build/test/Unit/core && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/UT_Context_Core.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/Unit/core/CMakeFiles/UT_Context_Core.dir/build: test/Unit/core/UT_Context_Core
.PHONY : test/Unit/core/CMakeFiles/UT_Context_Core.dir/build

test/Unit/core/CMakeFiles/UT_Context_Core.dir/requires: test/Unit/core/CMakeFiles/UT_Context_Core.dir/TestUniqueCollection.cpp.o.requires
test/Unit/core/CMakeFiles/UT_Context_Core.dir/requires: test/Unit/core/CMakeFiles/UT_Context_Core.dir/__/main.cpp.o.requires
.PHONY : test/Unit/core/CMakeFiles/UT_Context_Core.dir/requires

test/Unit/core/CMakeFiles/UT_Context_Core.dir/clean:
	cd /home/daniel/Workspace/Locations/build/test/Unit/core && $(CMAKE_COMMAND) -P CMakeFiles/UT_Context_Core.dir/cmake_clean.cmake
.PHONY : test/Unit/core/CMakeFiles/UT_Context_Core.dir/clean

test/Unit/core/CMakeFiles/UT_Context_Core.dir/depend:
	cd /home/daniel/Workspace/Locations/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/daniel/Workspace/Locations /home/daniel/Workspace/Locations/test/Unit/core /home/daniel/Workspace/Locations/build /home/daniel/Workspace/Locations/build/test/Unit/core /home/daniel/Workspace/Locations/build/test/Unit/core/CMakeFiles/UT_Context_Core.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/Unit/core/CMakeFiles/UT_Context_Core.dir/depend

