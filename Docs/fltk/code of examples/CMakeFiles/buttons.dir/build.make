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
include test/CMakeFiles/buttons.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/buttons.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/buttons.dir/flags.make

test/CMakeFiles/buttons.dir/buttons.cxx.obj: test/CMakeFiles/buttons.dir/flags.make
test/CMakeFiles/buttons.dir/buttons.cxx.obj: test/CMakeFiles/buttons.dir/includes_CXX.rsp
test/CMakeFiles/buttons.dir/buttons.cxx.obj: test/buttons.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report C:\dev\fltk-1.3.2\CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/buttons.dir/buttons.cxx.obj"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles\buttons.dir\buttons.cxx.obj -c C:\dev\fltk-1.3.2\test\buttons.cxx

test/CMakeFiles/buttons.dir/buttons.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/buttons.dir/buttons.cxx.i"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -E C:\dev\fltk-1.3.2\test\buttons.cxx > CMakeFiles\buttons.dir\buttons.cxx.i

test/CMakeFiles/buttons.dir/buttons.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/buttons.dir/buttons.cxx.s"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -S C:\dev\fltk-1.3.2\test\buttons.cxx -o CMakeFiles\buttons.dir\buttons.cxx.s

test/CMakeFiles/buttons.dir/buttons.cxx.obj.requires:
.PHONY : test/CMakeFiles/buttons.dir/buttons.cxx.obj.requires

test/CMakeFiles/buttons.dir/buttons.cxx.obj.provides: test/CMakeFiles/buttons.dir/buttons.cxx.obj.requires
	$(MAKE) -f test\CMakeFiles\buttons.dir\build.make test/CMakeFiles/buttons.dir/buttons.cxx.obj.provides.build
.PHONY : test/CMakeFiles/buttons.dir/buttons.cxx.obj.provides

test/CMakeFiles/buttons.dir/buttons.cxx.obj.provides.build: test/CMakeFiles/buttons.dir/buttons.cxx.obj

# Object files for target buttons
buttons_OBJECTS = \
"CMakeFiles/buttons.dir/buttons.cxx.obj"

# External object files for target buttons
buttons_EXTERNAL_OBJECTS =

bin/examples/buttons.exe: test/CMakeFiles/buttons.dir/buttons.cxx.obj
bin/examples/buttons.exe: test/CMakeFiles/buttons.dir/build.make
bin/examples/buttons.exe: lib/libfltk.a
bin/examples/buttons.exe: test/CMakeFiles/buttons.dir/objects1.rsp
bin/examples/buttons.exe: test/CMakeFiles/buttons.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ..\bin\examples\buttons.exe"
	cd /d C:\dev\fltk-1.3.2\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\buttons.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/buttons.dir/build: bin/examples/buttons.exe
.PHONY : test/CMakeFiles/buttons.dir/build

test/CMakeFiles/buttons.dir/requires: test/CMakeFiles/buttons.dir/buttons.cxx.obj.requires
.PHONY : test/CMakeFiles/buttons.dir/requires

test/CMakeFiles/buttons.dir/clean:
	cd /d C:\dev\fltk-1.3.2\test && $(CMAKE_COMMAND) -P CMakeFiles\buttons.dir\cmake_clean.cmake
.PHONY : test/CMakeFiles/buttons.dir/clean

test/CMakeFiles/buttons.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\dev\fltk-1.3.2 C:\dev\fltk-1.3.2\test C:\dev\fltk-1.3.2 C:\dev\fltk-1.3.2\test C:\dev\fltk-1.3.2\test\CMakeFiles\buttons.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/buttons.dir/depend
