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
include test/CMakeFiles/color_chooser.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/color_chooser.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/color_chooser.dir/flags.make

test/CMakeFiles/color_chooser.dir/color_chooser.cxx.obj: test/CMakeFiles/color_chooser.dir/flags.make
test/CMakeFiles/color_chooser.dir/color_chooser.cxx.obj: test/CMakeFiles/color_chooser.dir/includes_CXX.rsp
test/CMakeFiles/color_chooser.dir/color_chooser.cxx.obj: test/color_chooser.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report C:\dev\fltk-1.3.2\CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/color_chooser.dir/color_chooser.cxx.obj"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles\color_chooser.dir\color_chooser.cxx.obj -c C:\dev\fltk-1.3.2\test\color_chooser.cxx

test/CMakeFiles/color_chooser.dir/color_chooser.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/color_chooser.dir/color_chooser.cxx.i"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -E C:\dev\fltk-1.3.2\test\color_chooser.cxx > CMakeFiles\color_chooser.dir\color_chooser.cxx.i

test/CMakeFiles/color_chooser.dir/color_chooser.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/color_chooser.dir/color_chooser.cxx.s"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -S C:\dev\fltk-1.3.2\test\color_chooser.cxx -o CMakeFiles\color_chooser.dir\color_chooser.cxx.s

test/CMakeFiles/color_chooser.dir/color_chooser.cxx.obj.requires:
.PHONY : test/CMakeFiles/color_chooser.dir/color_chooser.cxx.obj.requires

test/CMakeFiles/color_chooser.dir/color_chooser.cxx.obj.provides: test/CMakeFiles/color_chooser.dir/color_chooser.cxx.obj.requires
	$(MAKE) -f test\CMakeFiles\color_chooser.dir\build.make test/CMakeFiles/color_chooser.dir/color_chooser.cxx.obj.provides.build
.PHONY : test/CMakeFiles/color_chooser.dir/color_chooser.cxx.obj.provides

test/CMakeFiles/color_chooser.dir/color_chooser.cxx.obj.provides.build: test/CMakeFiles/color_chooser.dir/color_chooser.cxx.obj

# Object files for target color_chooser
color_chooser_OBJECTS = \
"CMakeFiles/color_chooser.dir/color_chooser.cxx.obj"

# External object files for target color_chooser
color_chooser_EXTERNAL_OBJECTS =

bin/examples/color_chooser.exe: test/CMakeFiles/color_chooser.dir/color_chooser.cxx.obj
bin/examples/color_chooser.exe: test/CMakeFiles/color_chooser.dir/build.make
bin/examples/color_chooser.exe: lib/libfltk.a
bin/examples/color_chooser.exe: test/CMakeFiles/color_chooser.dir/objects1.rsp
bin/examples/color_chooser.exe: test/CMakeFiles/color_chooser.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ..\bin\examples\color_chooser.exe"
	cd /d C:\dev\fltk-1.3.2\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\color_chooser.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/color_chooser.dir/build: bin/examples/color_chooser.exe
.PHONY : test/CMakeFiles/color_chooser.dir/build

test/CMakeFiles/color_chooser.dir/requires: test/CMakeFiles/color_chooser.dir/color_chooser.cxx.obj.requires
.PHONY : test/CMakeFiles/color_chooser.dir/requires

test/CMakeFiles/color_chooser.dir/clean:
	cd /d C:\dev\fltk-1.3.2\test && $(CMAKE_COMMAND) -P CMakeFiles\color_chooser.dir\cmake_clean.cmake
.PHONY : test/CMakeFiles/color_chooser.dir/clean

test/CMakeFiles/color_chooser.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\dev\fltk-1.3.2 C:\dev\fltk-1.3.2\test C:\dev\fltk-1.3.2 C:\dev\fltk-1.3.2\test C:\dev\fltk-1.3.2\test\CMakeFiles\color_chooser.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/color_chooser.dir/depend

