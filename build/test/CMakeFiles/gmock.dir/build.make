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

# Utility rule file for gmock.

# Include the progress variables for this target.
include test/CMakeFiles/gmock.dir/progress.make

test/CMakeFiles/gmock: test/CMakeFiles/gmock-complete

test/CMakeFiles/gmock-complete: test/gmock/src/gmock-stamp/gmock-install
test/CMakeFiles/gmock-complete: test/gmock/src/gmock-stamp/gmock-mkdir
test/CMakeFiles/gmock-complete: test/gmock/src/gmock-stamp/gmock-download
test/CMakeFiles/gmock-complete: test/gmock/src/gmock-stamp/gmock-update
test/CMakeFiles/gmock-complete: test/gmock/src/gmock-stamp/gmock-patch
test/CMakeFiles/gmock-complete: test/gmock/src/gmock-stamp/gmock-configure
test/CMakeFiles/gmock-complete: test/gmock/src/gmock-stamp/gmock-build
test/CMakeFiles/gmock-complete: test/gmock/src/gmock-stamp/gmock-install
	$(CMAKE_COMMAND) -E cmake_progress_report /home/daniel/Workspace/Locations/build/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Completed 'gmock'"
	cd /home/daniel/Workspace/Locations/build/test && /usr/bin/cmake -E make_directory /home/daniel/Workspace/Locations/build/test/CMakeFiles
	cd /home/daniel/Workspace/Locations/build/test && /usr/bin/cmake -E touch /home/daniel/Workspace/Locations/build/test/CMakeFiles/gmock-complete
	cd /home/daniel/Workspace/Locations/build/test && /usr/bin/cmake -E touch /home/daniel/Workspace/Locations/build/test/gmock/src/gmock-stamp/gmock-done

test/gmock/src/gmock-stamp/gmock-install: test/gmock/src/gmock-stamp/gmock-build
	$(CMAKE_COMMAND) -E cmake_progress_report /home/daniel/Workspace/Locations/build/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "No install step for 'gmock'"
	cd /home/daniel/Workspace/Locations/build/test/gmock/src/gmock-build && /usr/bin/cmake -E echo_append
	cd /home/daniel/Workspace/Locations/build/test/gmock/src/gmock-build && /usr/bin/cmake -E touch /home/daniel/Workspace/Locations/build/test/gmock/src/gmock-stamp/gmock-install

test/gmock/src/gmock-stamp/gmock-mkdir:
	$(CMAKE_COMMAND) -E cmake_progress_report /home/daniel/Workspace/Locations/build/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Creating directories for 'gmock'"
	cd /home/daniel/Workspace/Locations/build/test && /usr/bin/cmake -E make_directory /home/daniel/Workspace/Locations/build/test/gmock/src/gmock
	cd /home/daniel/Workspace/Locations/build/test && /usr/bin/cmake -E make_directory /home/daniel/Workspace/Locations/build/test/gmock/src/gmock-build
	cd /home/daniel/Workspace/Locations/build/test && /usr/bin/cmake -E make_directory /home/daniel/Workspace/Locations/build/test/gmock
	cd /home/daniel/Workspace/Locations/build/test && /usr/bin/cmake -E make_directory /home/daniel/Workspace/Locations/build/test/gmock/tmp
	cd /home/daniel/Workspace/Locations/build/test && /usr/bin/cmake -E make_directory /home/daniel/Workspace/Locations/build/test/gmock/src/gmock-stamp
	cd /home/daniel/Workspace/Locations/build/test && /usr/bin/cmake -E make_directory /home/daniel/Workspace/Locations/build/test/gmock/src
	cd /home/daniel/Workspace/Locations/build/test && /usr/bin/cmake -E touch /home/daniel/Workspace/Locations/build/test/gmock/src/gmock-stamp/gmock-mkdir

test/gmock/src/gmock-stamp/gmock-download: test/gmock/src/gmock-stamp/gmock-urlinfo.txt
test/gmock/src/gmock-stamp/gmock-download: test/gmock/src/gmock-stamp/gmock-mkdir
	$(CMAKE_COMMAND) -E cmake_progress_report /home/daniel/Workspace/Locations/build/CMakeFiles $(CMAKE_PROGRESS_4)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Performing download step (download, verify and extract) for 'gmock'"
	cd /home/daniel/Workspace/Locations/build/test/gmock/src && /usr/bin/cmake -P /home/daniel/Workspace/Locations/build/test/gmock/src/gmock-stamp/download-gmock.cmake
	cd /home/daniel/Workspace/Locations/build/test/gmock/src && /usr/bin/cmake -P /home/daniel/Workspace/Locations/build/test/gmock/src/gmock-stamp/verify-gmock.cmake
	cd /home/daniel/Workspace/Locations/build/test/gmock/src && /usr/bin/cmake -P /home/daniel/Workspace/Locations/build/test/gmock/src/gmock-stamp/extract-gmock.cmake
	cd /home/daniel/Workspace/Locations/build/test/gmock/src && /usr/bin/cmake -E touch /home/daniel/Workspace/Locations/build/test/gmock/src/gmock-stamp/gmock-download

test/gmock/src/gmock-stamp/gmock-update: test/gmock/src/gmock-stamp/gmock-download
	$(CMAKE_COMMAND) -E cmake_progress_report /home/daniel/Workspace/Locations/build/CMakeFiles $(CMAKE_PROGRESS_5)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "No update step for 'gmock'"
	cd /home/daniel/Workspace/Locations/build/test && /usr/bin/cmake -E echo_append
	cd /home/daniel/Workspace/Locations/build/test && /usr/bin/cmake -E touch /home/daniel/Workspace/Locations/build/test/gmock/src/gmock-stamp/gmock-update

test/gmock/src/gmock-stamp/gmock-patch: test/gmock/src/gmock-stamp/gmock-download
	$(CMAKE_COMMAND) -E cmake_progress_report /home/daniel/Workspace/Locations/build/CMakeFiles $(CMAKE_PROGRESS_6)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "No patch step for 'gmock'"
	cd /home/daniel/Workspace/Locations/build/test && /usr/bin/cmake -E echo_append
	cd /home/daniel/Workspace/Locations/build/test && /usr/bin/cmake -E touch /home/daniel/Workspace/Locations/build/test/gmock/src/gmock-stamp/gmock-patch

test/gmock/src/gmock-stamp/gmock-configure: test/gmock/tmp/gmock-cfgcmd.txt
test/gmock/src/gmock-stamp/gmock-configure: test/gmock/src/gmock-stamp/gmock-update
test/gmock/src/gmock-stamp/gmock-configure: test/gmock/src/gmock-stamp/gmock-patch
	$(CMAKE_COMMAND) -E cmake_progress_report /home/daniel/Workspace/Locations/build/CMakeFiles $(CMAKE_PROGRESS_7)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Performing configure step for 'gmock'"
	cd /home/daniel/Workspace/Locations/build/test/gmock/src/gmock-build && /usr/bin/cmake "-GUnix Makefiles" /home/daniel/Workspace/Locations/build/test/gmock/src/gmock
	cd /home/daniel/Workspace/Locations/build/test/gmock/src/gmock-build && /usr/bin/cmake -E touch /home/daniel/Workspace/Locations/build/test/gmock/src/gmock-stamp/gmock-configure

test/gmock/src/gmock-stamp/gmock-build: test/gmock/src/gmock-stamp/gmock-configure
	$(CMAKE_COMMAND) -E cmake_progress_report /home/daniel/Workspace/Locations/build/CMakeFiles $(CMAKE_PROGRESS_8)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Performing build step for 'gmock'"
	cd /home/daniel/Workspace/Locations/build/test/gmock/src/gmock-build && $(MAKE)
	cd /home/daniel/Workspace/Locations/build/test/gmock/src/gmock-build && /usr/bin/cmake -E touch /home/daniel/Workspace/Locations/build/test/gmock/src/gmock-stamp/gmock-build

gmock: test/CMakeFiles/gmock
gmock: test/CMakeFiles/gmock-complete
gmock: test/gmock/src/gmock-stamp/gmock-install
gmock: test/gmock/src/gmock-stamp/gmock-mkdir
gmock: test/gmock/src/gmock-stamp/gmock-download
gmock: test/gmock/src/gmock-stamp/gmock-update
gmock: test/gmock/src/gmock-stamp/gmock-patch
gmock: test/gmock/src/gmock-stamp/gmock-configure
gmock: test/gmock/src/gmock-stamp/gmock-build
gmock: test/CMakeFiles/gmock.dir/build.make
.PHONY : gmock

# Rule to build all files generated by this target.
test/CMakeFiles/gmock.dir/build: gmock
.PHONY : test/CMakeFiles/gmock.dir/build

test/CMakeFiles/gmock.dir/clean:
	cd /home/daniel/Workspace/Locations/build/test && $(CMAKE_COMMAND) -P CMakeFiles/gmock.dir/cmake_clean.cmake
.PHONY : test/CMakeFiles/gmock.dir/clean

test/CMakeFiles/gmock.dir/depend:
	cd /home/daniel/Workspace/Locations/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/daniel/Workspace/Locations /home/daniel/Workspace/Locations/test /home/daniel/Workspace/Locations/build /home/daniel/Workspace/Locations/build/test /home/daniel/Workspace/Locations/build/test/CMakeFiles/gmock.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/gmock.dir/depend

