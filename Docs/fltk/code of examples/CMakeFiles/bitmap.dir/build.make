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
include test/CMakeFiles/bitmap.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/bitmap.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/bitmap.dir/flags.make

test/CMakeFiles/bitmap.dir/bitmap.cxx.obj: test/CMakeFiles/bitmap.dir/flags.make
test/CMakeFiles/bitmap.dir/bitmap.cxx.obj: test/CMakeFiles/bitmap.dir/includes_CXX.rsp
test/CMakeFiles/bitmap.dir/bitmap.cxx.obj: test/bitmap.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report C:\dev\fltk-1.3.2\CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/bitmap.dir/bitmap.cxx.obj"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles\bitmap.dir\bitmap.cxx.obj -c C:\dev\fltk-1.3.2\test\bitmap.cxx

test/CMakeFiles/bitmap.dir/bitmap.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/bitmap.dir/bitmap.cxx.i"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -E C:\dev\fltk-1.3.2\test\bitmap.cxx > CMakeFiles\bitmap.dir\bitmap.cxx.i

test/CMakeFiles/bitmap.dir/bitmap.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/bitmap.dir/bitmap.cxx.s"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -S C:\dev\fltk-1.3.2\test\bitmap.cxx -o CMakeFiles\bitmap.dir\bitmap.cxx.s

test/CMakeFiles/bitmap.dir/bitmap.cxx.obj.requires:
.PHONY : test/CMakeFiles/bitmap.dir/bitmap.cxx.obj.requires

test/CMakeFiles/bitmap.dir/bitmap.cxx.obj.provides: test/CMakeFiles/bitmap.dir/bitmap.cxx.obj.requires
	$(MAKE) -f test\CMakeFiles\bitmap.dir\build.make test/CMakeFiles/bitmap.dir/bitmap.cxx.obj.provides.build
.PHONY : test/CMakeFiles/bitmap.dir/bitmap.cxx.obj.provides

test/CMakeFiles/bitmap.dir/bitmap.cxx.obj.provides.build: test/CMakeFiles/bitmap.dir/bitmap.cxx.obj

# Object files for target bitmap
bitmap_OBJECTS = \
"CMakeFiles/bitmap.dir/bitmap.cxx.obj"

# External object files for target bitmap
bitmap_EXTERNAL_OBJECTS =

bin/examples/bitmap.exe: test/CMakeFiles/bitmap.dir/bitmap.cxx.obj
bin/examples/bitmap.exe: test/CMakeFiles/bitmap.dir/build.make
bin/examples/bitmap.exe: lib/libfltk.a
bin/examples/bitmap.exe: test/CMakeFiles/bitmap.dir/objects1.rsp
bin/examples/bitmap.exe: test/CMakeFiles/bitmap.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ..\bin\examples\bitmap.exe"
	cd /d C:\dev\fltk-1.3.2\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\bitmap.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/bitmap.dir/build: bin/examples/bitmap.exe
.PHONY : test/CMakeFiles/bitmap.dir/build

test/CMakeFiles/bitmap.dir/requires: test/CMakeFiles/bitmap.dir/bitmap.cxx.obj.requires
.PHONY : test/CMakeFiles/bitmap.dir/requires

test/CMakeFiles/bitmap.dir/clean:
	cd /d C:\dev\fltk-1.3.2\test && $(CMAKE_COMMAND) -P CMakeFiles\bitmap.dir\cmake_clean.cmake
.PHONY : test/CMakeFiles/bitmap.dir/clean

test/CMakeFiles/bitmap.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\dev\fltk-1.3.2 C:\dev\fltk-1.3.2\test C:\dev\fltk-1.3.2 C:\dev\fltk-1.3.2\test C:\dev\fltk-1.3.2\test\CMakeFiles\bitmap.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/bitmap.dir/depend

