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
include test/CMakeFiles/scroll.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/scroll.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/scroll.dir/flags.make

test/CMakeFiles/scroll.dir/scroll.cxx.obj: test/CMakeFiles/scroll.dir/flags.make
test/CMakeFiles/scroll.dir/scroll.cxx.obj: test/CMakeFiles/scroll.dir/includes_CXX.rsp
test/CMakeFiles/scroll.dir/scroll.cxx.obj: test/scroll.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report C:\dev\fltk-1.3.2\CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/scroll.dir/scroll.cxx.obj"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles\scroll.dir\scroll.cxx.obj -c C:\dev\fltk-1.3.2\test\scroll.cxx

test/CMakeFiles/scroll.dir/scroll.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/scroll.dir/scroll.cxx.i"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -E C:\dev\fltk-1.3.2\test\scroll.cxx > CMakeFiles\scroll.dir\scroll.cxx.i

test/CMakeFiles/scroll.dir/scroll.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/scroll.dir/scroll.cxx.s"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -S C:\dev\fltk-1.3.2\test\scroll.cxx -o CMakeFiles\scroll.dir\scroll.cxx.s

test/CMakeFiles/scroll.dir/scroll.cxx.obj.requires:
.PHONY : test/CMakeFiles/scroll.dir/scroll.cxx.obj.requires

test/CMakeFiles/scroll.dir/scroll.cxx.obj.provides: test/CMakeFiles/scroll.dir/scroll.cxx.obj.requires
	$(MAKE) -f test\CMakeFiles\scroll.dir\build.make test/CMakeFiles/scroll.dir/scroll.cxx.obj.provides.build
.PHONY : test/CMakeFiles/scroll.dir/scroll.cxx.obj.provides

test/CMakeFiles/scroll.dir/scroll.cxx.obj.provides.build: test/CMakeFiles/scroll.dir/scroll.cxx.obj

# Object files for target scroll
scroll_OBJECTS = \
"CMakeFiles/scroll.dir/scroll.cxx.obj"

# External object files for target scroll
scroll_EXTERNAL_OBJECTS =

bin/examples/scroll.exe: test/CMakeFiles/scroll.dir/scroll.cxx.obj
bin/examples/scroll.exe: test/CMakeFiles/scroll.dir/build.make
bin/examples/scroll.exe: lib/libfltk.a
bin/examples/scroll.exe: test/CMakeFiles/scroll.dir/objects1.rsp
bin/examples/scroll.exe: test/CMakeFiles/scroll.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ..\bin\examples\scroll.exe"
	cd /d C:\dev\fltk-1.3.2\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\scroll.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/scroll.dir/build: bin/examples/scroll.exe
.PHONY : test/CMakeFiles/scroll.dir/build

test/CMakeFiles/scroll.dir/requires: test/CMakeFiles/scroll.dir/scroll.cxx.obj.requires
.PHONY : test/CMakeFiles/scroll.dir/requires

test/CMakeFiles/scroll.dir/clean:
	cd /d C:\dev\fltk-1.3.2\test && $(CMAKE_COMMAND) -P CMakeFiles\scroll.dir\cmake_clean.cmake
.PHONY : test/CMakeFiles/scroll.dir/clean

test/CMakeFiles/scroll.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\dev\fltk-1.3.2 C:\dev\fltk-1.3.2\test C:\dev\fltk-1.3.2 C:\dev\fltk-1.3.2\test C:\dev\fltk-1.3.2\test\CMakeFiles\scroll.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/scroll.dir/depend
