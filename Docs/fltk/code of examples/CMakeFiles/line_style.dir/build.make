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
include test/CMakeFiles/line_style.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/line_style.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/line_style.dir/flags.make

test/CMakeFiles/line_style.dir/line_style.cxx.obj: test/CMakeFiles/line_style.dir/flags.make
test/CMakeFiles/line_style.dir/line_style.cxx.obj: test/CMakeFiles/line_style.dir/includes_CXX.rsp
test/CMakeFiles/line_style.dir/line_style.cxx.obj: test/line_style.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report C:\dev\fltk-1.3.2\CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/line_style.dir/line_style.cxx.obj"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles\line_style.dir\line_style.cxx.obj -c C:\dev\fltk-1.3.2\test\line_style.cxx

test/CMakeFiles/line_style.dir/line_style.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/line_style.dir/line_style.cxx.i"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -E C:\dev\fltk-1.3.2\test\line_style.cxx > CMakeFiles\line_style.dir\line_style.cxx.i

test/CMakeFiles/line_style.dir/line_style.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/line_style.dir/line_style.cxx.s"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -S C:\dev\fltk-1.3.2\test\line_style.cxx -o CMakeFiles\line_style.dir\line_style.cxx.s

test/CMakeFiles/line_style.dir/line_style.cxx.obj.requires:
.PHONY : test/CMakeFiles/line_style.dir/line_style.cxx.obj.requires

test/CMakeFiles/line_style.dir/line_style.cxx.obj.provides: test/CMakeFiles/line_style.dir/line_style.cxx.obj.requires
	$(MAKE) -f test\CMakeFiles\line_style.dir\build.make test/CMakeFiles/line_style.dir/line_style.cxx.obj.provides.build
.PHONY : test/CMakeFiles/line_style.dir/line_style.cxx.obj.provides

test/CMakeFiles/line_style.dir/line_style.cxx.obj.provides.build: test/CMakeFiles/line_style.dir/line_style.cxx.obj

# Object files for target line_style
line_style_OBJECTS = \
"CMakeFiles/line_style.dir/line_style.cxx.obj"

# External object files for target line_style
line_style_EXTERNAL_OBJECTS =

bin/examples/line_style.exe: test/CMakeFiles/line_style.dir/line_style.cxx.obj
bin/examples/line_style.exe: test/CMakeFiles/line_style.dir/build.make
bin/examples/line_style.exe: lib/libfltk.a
bin/examples/line_style.exe: test/CMakeFiles/line_style.dir/objects1.rsp
bin/examples/line_style.exe: test/CMakeFiles/line_style.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ..\bin\examples\line_style.exe"
	cd /d C:\dev\fltk-1.3.2\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\line_style.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/line_style.dir/build: bin/examples/line_style.exe
.PHONY : test/CMakeFiles/line_style.dir/build

test/CMakeFiles/line_style.dir/requires: test/CMakeFiles/line_style.dir/line_style.cxx.obj.requires
.PHONY : test/CMakeFiles/line_style.dir/requires

test/CMakeFiles/line_style.dir/clean:
	cd /d C:\dev\fltk-1.3.2\test && $(CMAKE_COMMAND) -P CMakeFiles\line_style.dir\cmake_clean.cmake
.PHONY : test/CMakeFiles/line_style.dir/clean

test/CMakeFiles/line_style.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\dev\fltk-1.3.2 C:\dev\fltk-1.3.2\test C:\dev\fltk-1.3.2 C:\dev\fltk-1.3.2\test C:\dev\fltk-1.3.2\test\CMakeFiles\line_style.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/line_style.dir/depend
