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
include test/CMakeFiles/iconize.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/iconize.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/iconize.dir/flags.make

test/CMakeFiles/iconize.dir/iconize.cxx.obj: test/CMakeFiles/iconize.dir/flags.make
test/CMakeFiles/iconize.dir/iconize.cxx.obj: test/CMakeFiles/iconize.dir/includes_CXX.rsp
test/CMakeFiles/iconize.dir/iconize.cxx.obj: test/iconize.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report C:\dev\fltk-1.3.2\CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/iconize.dir/iconize.cxx.obj"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles\iconize.dir\iconize.cxx.obj -c C:\dev\fltk-1.3.2\test\iconize.cxx

test/CMakeFiles/iconize.dir/iconize.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/iconize.dir/iconize.cxx.i"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -E C:\dev\fltk-1.3.2\test\iconize.cxx > CMakeFiles\iconize.dir\iconize.cxx.i

test/CMakeFiles/iconize.dir/iconize.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/iconize.dir/iconize.cxx.s"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -S C:\dev\fltk-1.3.2\test\iconize.cxx -o CMakeFiles\iconize.dir\iconize.cxx.s

test/CMakeFiles/iconize.dir/iconize.cxx.obj.requires:
.PHONY : test/CMakeFiles/iconize.dir/iconize.cxx.obj.requires

test/CMakeFiles/iconize.dir/iconize.cxx.obj.provides: test/CMakeFiles/iconize.dir/iconize.cxx.obj.requires
	$(MAKE) -f test\CMakeFiles\iconize.dir\build.make test/CMakeFiles/iconize.dir/iconize.cxx.obj.provides.build
.PHONY : test/CMakeFiles/iconize.dir/iconize.cxx.obj.provides

test/CMakeFiles/iconize.dir/iconize.cxx.obj.provides.build: test/CMakeFiles/iconize.dir/iconize.cxx.obj

# Object files for target iconize
iconize_OBJECTS = \
"CMakeFiles/iconize.dir/iconize.cxx.obj"

# External object files for target iconize
iconize_EXTERNAL_OBJECTS =

bin/examples/iconize.exe: test/CMakeFiles/iconize.dir/iconize.cxx.obj
bin/examples/iconize.exe: test/CMakeFiles/iconize.dir/build.make
bin/examples/iconize.exe: lib/libfltk.a
bin/examples/iconize.exe: test/CMakeFiles/iconize.dir/objects1.rsp
bin/examples/iconize.exe: test/CMakeFiles/iconize.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ..\bin\examples\iconize.exe"
	cd /d C:\dev\fltk-1.3.2\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\iconize.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/iconize.dir/build: bin/examples/iconize.exe
.PHONY : test/CMakeFiles/iconize.dir/build

test/CMakeFiles/iconize.dir/requires: test/CMakeFiles/iconize.dir/iconize.cxx.obj.requires
.PHONY : test/CMakeFiles/iconize.dir/requires

test/CMakeFiles/iconize.dir/clean:
	cd /d C:\dev\fltk-1.3.2\test && $(CMAKE_COMMAND) -P CMakeFiles\iconize.dir\cmake_clean.cmake
.PHONY : test/CMakeFiles/iconize.dir/clean

test/CMakeFiles/iconize.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\dev\fltk-1.3.2 C:\dev\fltk-1.3.2\test C:\dev\fltk-1.3.2 C:\dev\fltk-1.3.2\test C:\dev\fltk-1.3.2\test\CMakeFiles\iconize.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/iconize.dir/depend

