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
include test/CMakeFiles/minimum.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/minimum.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/minimum.dir/flags.make

test/CMakeFiles/minimum.dir/minimum.cxx.obj: test/CMakeFiles/minimum.dir/flags.make
test/CMakeFiles/minimum.dir/minimum.cxx.obj: test/CMakeFiles/minimum.dir/includes_CXX.rsp
test/CMakeFiles/minimum.dir/minimum.cxx.obj: test/minimum.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report C:\dev\fltk-1.3.2\CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/minimum.dir/minimum.cxx.obj"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles\minimum.dir\minimum.cxx.obj -c C:\dev\fltk-1.3.2\test\minimum.cxx

test/CMakeFiles/minimum.dir/minimum.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/minimum.dir/minimum.cxx.i"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -E C:\dev\fltk-1.3.2\test\minimum.cxx > CMakeFiles\minimum.dir\minimum.cxx.i

test/CMakeFiles/minimum.dir/minimum.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/minimum.dir/minimum.cxx.s"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -S C:\dev\fltk-1.3.2\test\minimum.cxx -o CMakeFiles\minimum.dir\minimum.cxx.s

test/CMakeFiles/minimum.dir/minimum.cxx.obj.requires:
.PHONY : test/CMakeFiles/minimum.dir/minimum.cxx.obj.requires

test/CMakeFiles/minimum.dir/minimum.cxx.obj.provides: test/CMakeFiles/minimum.dir/minimum.cxx.obj.requires
	$(MAKE) -f test\CMakeFiles\minimum.dir\build.make test/CMakeFiles/minimum.dir/minimum.cxx.obj.provides.build
.PHONY : test/CMakeFiles/minimum.dir/minimum.cxx.obj.provides

test/CMakeFiles/minimum.dir/minimum.cxx.obj.provides.build: test/CMakeFiles/minimum.dir/minimum.cxx.obj

# Object files for target minimum
minimum_OBJECTS = \
"CMakeFiles/minimum.dir/minimum.cxx.obj"

# External object files for target minimum
minimum_EXTERNAL_OBJECTS =

bin/examples/minimum.exe: test/CMakeFiles/minimum.dir/minimum.cxx.obj
bin/examples/minimum.exe: test/CMakeFiles/minimum.dir/build.make
bin/examples/minimum.exe: lib/libfltk.a
bin/examples/minimum.exe: test/CMakeFiles/minimum.dir/objects1.rsp
bin/examples/minimum.exe: test/CMakeFiles/minimum.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ..\bin\examples\minimum.exe"
	cd /d C:\dev\fltk-1.3.2\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\minimum.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/minimum.dir/build: bin/examples/minimum.exe
.PHONY : test/CMakeFiles/minimum.dir/build

test/CMakeFiles/minimum.dir/requires: test/CMakeFiles/minimum.dir/minimum.cxx.obj.requires
.PHONY : test/CMakeFiles/minimum.dir/requires

test/CMakeFiles/minimum.dir/clean:
	cd /d C:\dev\fltk-1.3.2\test && $(CMAKE_COMMAND) -P CMakeFiles\minimum.dir\cmake_clean.cmake
.PHONY : test/CMakeFiles/minimum.dir/clean

test/CMakeFiles/minimum.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\dev\fltk-1.3.2 C:\dev\fltk-1.3.2\test C:\dev\fltk-1.3.2 C:\dev\fltk-1.3.2\test C:\dev\fltk-1.3.2\test\CMakeFiles\minimum.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/minimum.dir/depend

