# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.0

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Archivos de programa\CMake\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Archivos de programa\CMake\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\dev\fltk-1.3.2

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\dev\fltk-1.3.2

# Include any dependencies generated for this target.
include test/CMakeFiles/valuators.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/valuators.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/valuators.dir/flags.make

test/valuators.cxx: test/valuators.fl
test/valuators.cxx: bin/fluid.exe
	$(CMAKE_COMMAND) -E cmake_progress_report C:\dev\fltk-1.3.2\CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating valuators.cxx"
	cd /d C:\dev\fltk-1.3.2\test && ..\bin\fluid.exe -c -h C:/dev/fltk-1.3.2/test/valuators.h -o C:/dev/fltk-1.3.2/test/valuators.cxx C:/dev/fltk-1.3.2/test/valuators.fl

test/valuators.h: test/valuators.fl
test/valuators.h: bin/fluid.exe
	$(CMAKE_COMMAND) -E cmake_progress_report C:\dev\fltk-1.3.2\CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating valuators.h"
	cd /d C:\dev\fltk-1.3.2\test && ..\bin\fluid.exe -c -h C:/dev/fltk-1.3.2/test/valuators.h -o C:/dev/fltk-1.3.2/test/valuators.cxx C:/dev/fltk-1.3.2/test/valuators.fl

test/CMakeFiles/valuators.dir/valuators.cxx.obj: test/CMakeFiles/valuators.dir/flags.make
test/CMakeFiles/valuators.dir/valuators.cxx.obj: test/CMakeFiles/valuators.dir/includes_CXX.rsp
test/CMakeFiles/valuators.dir/valuators.cxx.obj: test/valuators.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report C:\dev\fltk-1.3.2\CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/valuators.dir/valuators.cxx.obj"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles\valuators.dir\valuators.cxx.obj -c C:\dev\fltk-1.3.2\test\valuators.cxx

test/CMakeFiles/valuators.dir/valuators.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/valuators.dir/valuators.cxx.i"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -E C:\dev\fltk-1.3.2\test\valuators.cxx > CMakeFiles\valuators.dir\valuators.cxx.i

test/CMakeFiles/valuators.dir/valuators.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/valuators.dir/valuators.cxx.s"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -S C:\dev\fltk-1.3.2\test\valuators.cxx -o CMakeFiles\valuators.dir\valuators.cxx.s

test/CMakeFiles/valuators.dir/valuators.cxx.obj.requires:
.PHONY : test/CMakeFiles/valuators.dir/valuators.cxx.obj.requires

test/CMakeFiles/valuators.dir/valuators.cxx.obj.provides: test/CMakeFiles/valuators.dir/valuators.cxx.obj.requires
	$(MAKE) -f test\CMakeFiles\valuators.dir\build.make test/CMakeFiles/valuators.dir/valuators.cxx.obj.provides.build
.PHONY : test/CMakeFiles/valuators.dir/valuators.cxx.obj.provides

test/CMakeFiles/valuators.dir/valuators.cxx.obj.provides.build: test/CMakeFiles/valuators.dir/valuators.cxx.obj

# Object files for target valuators
valuators_OBJECTS = \
"CMakeFiles/valuators.dir/valuators.cxx.obj"

# External object files for target valuators
valuators_EXTERNAL_OBJECTS =

bin/examples/valuators.exe: test/CMakeFiles/valuators.dir/valuators.cxx.obj
bin/examples/valuators.exe: test/CMakeFiles/valuators.dir/build.make
bin/examples/valuators.exe: lib/libfltk.a
bin/examples/valuators.exe: test/CMakeFiles/valuators.dir/objects1.rsp
bin/examples/valuators.exe: test/CMakeFiles/valuators.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ..\bin\examples\valuators.exe"
	cd /d C:\dev\fltk-1.3.2\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\valuators.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/valuators.dir/build: bin/examples/valuators.exe
.PHONY : test/CMakeFiles/valuators.dir/build

test/CMakeFiles/valuators.dir/requires: test/CMakeFiles/valuators.dir/valuators.cxx.obj.requires
.PHONY : test/CMakeFiles/valuators.dir/requires

test/CMakeFiles/valuators.dir/clean:
	cd /d C:\dev\fltk-1.3.2\test && $(CMAKE_COMMAND) -P CMakeFiles\valuators.dir\cmake_clean.cmake
.PHONY : test/CMakeFiles/valuators.dir/clean

test/CMakeFiles/valuators.dir/depend: test/valuators.cxx
test/CMakeFiles/valuators.dir/depend: test/valuators.h
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\dev\fltk-1.3.2 C:\dev\fltk-1.3.2\test C:\dev\fltk-1.3.2 C:\dev\fltk-1.3.2\test C:\dev\fltk-1.3.2\test\CMakeFiles\valuators.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/valuators.dir/depend

