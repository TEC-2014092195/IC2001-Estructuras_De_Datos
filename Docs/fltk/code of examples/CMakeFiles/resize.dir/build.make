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
include test/CMakeFiles/resize.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/resize.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/resize.dir/flags.make

test/resize.cxx: test/resize.fl
test/resize.cxx: bin/fluid.exe
	$(CMAKE_COMMAND) -E cmake_progress_report C:\dev\fltk-1.3.2\CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating resize.cxx"
	cd /d C:\dev\fltk-1.3.2\test && ..\bin\fluid.exe -c -h C:/dev/fltk-1.3.2/test/resize.h -o C:/dev/fltk-1.3.2/test/resize.cxx C:/dev/fltk-1.3.2/test/resize.fl

test/resize.h: test/resize.fl
test/resize.h: bin/fluid.exe
	$(CMAKE_COMMAND) -E cmake_progress_report C:\dev\fltk-1.3.2\CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --blue --bold "Generating resize.h"
	cd /d C:\dev\fltk-1.3.2\test && ..\bin\fluid.exe -c -h C:/dev/fltk-1.3.2/test/resize.h -o C:/dev/fltk-1.3.2/test/resize.cxx C:/dev/fltk-1.3.2/test/resize.fl

test/CMakeFiles/resize.dir/resize.cxx.obj: test/CMakeFiles/resize.dir/flags.make
test/CMakeFiles/resize.dir/resize.cxx.obj: test/CMakeFiles/resize.dir/includes_CXX.rsp
test/CMakeFiles/resize.dir/resize.cxx.obj: test/resize.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report C:\dev\fltk-1.3.2\CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/resize.dir/resize.cxx.obj"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles\resize.dir\resize.cxx.obj -c C:\dev\fltk-1.3.2\test\resize.cxx

test/CMakeFiles/resize.dir/resize.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/resize.dir/resize.cxx.i"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -E C:\dev\fltk-1.3.2\test\resize.cxx > CMakeFiles\resize.dir\resize.cxx.i

test/CMakeFiles/resize.dir/resize.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/resize.dir/resize.cxx.s"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -S C:\dev\fltk-1.3.2\test\resize.cxx -o CMakeFiles\resize.dir\resize.cxx.s

test/CMakeFiles/resize.dir/resize.cxx.obj.requires:
.PHONY : test/CMakeFiles/resize.dir/resize.cxx.obj.requires

test/CMakeFiles/resize.dir/resize.cxx.obj.provides: test/CMakeFiles/resize.dir/resize.cxx.obj.requires
	$(MAKE) -f test\CMakeFiles\resize.dir\build.make test/CMakeFiles/resize.dir/resize.cxx.obj.provides.build
.PHONY : test/CMakeFiles/resize.dir/resize.cxx.obj.provides

test/CMakeFiles/resize.dir/resize.cxx.obj.provides.build: test/CMakeFiles/resize.dir/resize.cxx.obj

# Object files for target resize
resize_OBJECTS = \
"CMakeFiles/resize.dir/resize.cxx.obj"

# External object files for target resize
resize_EXTERNAL_OBJECTS =

bin/examples/resize.exe: test/CMakeFiles/resize.dir/resize.cxx.obj
bin/examples/resize.exe: test/CMakeFiles/resize.dir/build.make
bin/examples/resize.exe: lib/libfltk.a
bin/examples/resize.exe: test/CMakeFiles/resize.dir/objects1.rsp
bin/examples/resize.exe: test/CMakeFiles/resize.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ..\bin\examples\resize.exe"
	cd /d C:\dev\fltk-1.3.2\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\resize.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/resize.dir/build: bin/examples/resize.exe
.PHONY : test/CMakeFiles/resize.dir/build

test/CMakeFiles/resize.dir/requires: test/CMakeFiles/resize.dir/resize.cxx.obj.requires
.PHONY : test/CMakeFiles/resize.dir/requires

test/CMakeFiles/resize.dir/clean:
	cd /d C:\dev\fltk-1.3.2\test && $(CMAKE_COMMAND) -P CMakeFiles\resize.dir\cmake_clean.cmake
.PHONY : test/CMakeFiles/resize.dir/clean

test/CMakeFiles/resize.dir/depend: test/resize.cxx
test/CMakeFiles/resize.dir/depend: test/resize.h
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\dev\fltk-1.3.2 C:\dev\fltk-1.3.2\test C:\dev\fltk-1.3.2 C:\dev\fltk-1.3.2\test C:\dev\fltk-1.3.2\test\CMakeFiles\resize.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/resize.dir/depend

