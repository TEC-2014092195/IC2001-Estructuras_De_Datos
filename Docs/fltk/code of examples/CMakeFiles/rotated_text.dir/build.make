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
include test/CMakeFiles/rotated_text.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/rotated_text.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/rotated_text.dir/flags.make

test/CMakeFiles/rotated_text.dir/rotated_text.cxx.obj: test/CMakeFiles/rotated_text.dir/flags.make
test/CMakeFiles/rotated_text.dir/rotated_text.cxx.obj: test/CMakeFiles/rotated_text.dir/includes_CXX.rsp
test/CMakeFiles/rotated_text.dir/rotated_text.cxx.obj: test/rotated_text.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report C:\dev\fltk-1.3.2\CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/rotated_text.dir/rotated_text.cxx.obj"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles\rotated_text.dir\rotated_text.cxx.obj -c C:\dev\fltk-1.3.2\test\rotated_text.cxx

test/CMakeFiles/rotated_text.dir/rotated_text.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/rotated_text.dir/rotated_text.cxx.i"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -E C:\dev\fltk-1.3.2\test\rotated_text.cxx > CMakeFiles\rotated_text.dir\rotated_text.cxx.i

test/CMakeFiles/rotated_text.dir/rotated_text.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/rotated_text.dir/rotated_text.cxx.s"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -S C:\dev\fltk-1.3.2\test\rotated_text.cxx -o CMakeFiles\rotated_text.dir\rotated_text.cxx.s

test/CMakeFiles/rotated_text.dir/rotated_text.cxx.obj.requires:
.PHONY : test/CMakeFiles/rotated_text.dir/rotated_text.cxx.obj.requires

test/CMakeFiles/rotated_text.dir/rotated_text.cxx.obj.provides: test/CMakeFiles/rotated_text.dir/rotated_text.cxx.obj.requires
	$(MAKE) -f test\CMakeFiles\rotated_text.dir\build.make test/CMakeFiles/rotated_text.dir/rotated_text.cxx.obj.provides.build
.PHONY : test/CMakeFiles/rotated_text.dir/rotated_text.cxx.obj.provides

test/CMakeFiles/rotated_text.dir/rotated_text.cxx.obj.provides.build: test/CMakeFiles/rotated_text.dir/rotated_text.cxx.obj

# Object files for target rotated_text
rotated_text_OBJECTS = \
"CMakeFiles/rotated_text.dir/rotated_text.cxx.obj"

# External object files for target rotated_text
rotated_text_EXTERNAL_OBJECTS =

bin/examples/rotated_text.exe: test/CMakeFiles/rotated_text.dir/rotated_text.cxx.obj
bin/examples/rotated_text.exe: test/CMakeFiles/rotated_text.dir/build.make
bin/examples/rotated_text.exe: lib/libfltk.a
bin/examples/rotated_text.exe: test/CMakeFiles/rotated_text.dir/objects1.rsp
bin/examples/rotated_text.exe: test/CMakeFiles/rotated_text.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ..\bin\examples\rotated_text.exe"
	cd /d C:\dev\fltk-1.3.2\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\rotated_text.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/rotated_text.dir/build: bin/examples/rotated_text.exe
.PHONY : test/CMakeFiles/rotated_text.dir/build

test/CMakeFiles/rotated_text.dir/requires: test/CMakeFiles/rotated_text.dir/rotated_text.cxx.obj.requires
.PHONY : test/CMakeFiles/rotated_text.dir/requires

test/CMakeFiles/rotated_text.dir/clean:
	cd /d C:\dev\fltk-1.3.2\test && $(CMAKE_COMMAND) -P CMakeFiles\rotated_text.dir\cmake_clean.cmake
.PHONY : test/CMakeFiles/rotated_text.dir/clean

test/CMakeFiles/rotated_text.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\dev\fltk-1.3.2 C:\dev\fltk-1.3.2\test C:\dev\fltk-1.3.2 C:\dev\fltk-1.3.2\test C:\dev\fltk-1.3.2\test\CMakeFiles\rotated_text.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/rotated_text.dir/depend

