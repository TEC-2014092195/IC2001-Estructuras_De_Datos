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
include test/CMakeFiles/editor.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/editor.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/editor.dir/flags.make

test/CMakeFiles/editor.dir/editor.cxx.obj: test/CMakeFiles/editor.dir/flags.make
test/CMakeFiles/editor.dir/editor.cxx.obj: test/CMakeFiles/editor.dir/includes_CXX.rsp
test/CMakeFiles/editor.dir/editor.cxx.obj: test/editor.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report C:\dev\fltk-1.3.2\CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/editor.dir/editor.cxx.obj"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles\editor.dir\editor.cxx.obj -c C:\dev\fltk-1.3.2\test\editor.cxx

test/CMakeFiles/editor.dir/editor.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/editor.dir/editor.cxx.i"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -E C:\dev\fltk-1.3.2\test\editor.cxx > CMakeFiles\editor.dir\editor.cxx.i

test/CMakeFiles/editor.dir/editor.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/editor.dir/editor.cxx.s"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -S C:\dev\fltk-1.3.2\test\editor.cxx -o CMakeFiles\editor.dir\editor.cxx.s

test/CMakeFiles/editor.dir/editor.cxx.obj.requires:
.PHONY : test/CMakeFiles/editor.dir/editor.cxx.obj.requires

test/CMakeFiles/editor.dir/editor.cxx.obj.provides: test/CMakeFiles/editor.dir/editor.cxx.obj.requires
	$(MAKE) -f test\CMakeFiles\editor.dir\build.make test/CMakeFiles/editor.dir/editor.cxx.obj.provides.build
.PHONY : test/CMakeFiles/editor.dir/editor.cxx.obj.provides

test/CMakeFiles/editor.dir/editor.cxx.obj.provides.build: test/CMakeFiles/editor.dir/editor.cxx.obj

# Object files for target editor
editor_OBJECTS = \
"CMakeFiles/editor.dir/editor.cxx.obj"

# External object files for target editor
editor_EXTERNAL_OBJECTS =

bin/examples/editor.exe: test/CMakeFiles/editor.dir/editor.cxx.obj
bin/examples/editor.exe: test/CMakeFiles/editor.dir/build.make
bin/examples/editor.exe: lib/libfltk.a
bin/examples/editor.exe: test/CMakeFiles/editor.dir/objects1.rsp
bin/examples/editor.exe: test/CMakeFiles/editor.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ..\bin\examples\editor.exe"
	cd /d C:\dev\fltk-1.3.2\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\editor.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/editor.dir/build: bin/examples/editor.exe
.PHONY : test/CMakeFiles/editor.dir/build

test/CMakeFiles/editor.dir/requires: test/CMakeFiles/editor.dir/editor.cxx.obj.requires
.PHONY : test/CMakeFiles/editor.dir/requires

test/CMakeFiles/editor.dir/clean:
	cd /d C:\dev\fltk-1.3.2\test && $(CMAKE_COMMAND) -P CMakeFiles\editor.dir\cmake_clean.cmake
.PHONY : test/CMakeFiles/editor.dir/clean

test/CMakeFiles/editor.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\dev\fltk-1.3.2 C:\dev\fltk-1.3.2\test C:\dev\fltk-1.3.2 C:\dev\fltk-1.3.2\test C:\dev\fltk-1.3.2\test\CMakeFiles\editor.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/editor.dir/depend
