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
include test/CMakeFiles/pack.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/pack.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/pack.dir/flags.make

test/CMakeFiles/pack.dir/pack.cxx.obj: test/CMakeFiles/pack.dir/flags.make
test/CMakeFiles/pack.dir/pack.cxx.obj: test/CMakeFiles/pack.dir/includes_CXX.rsp
test/CMakeFiles/pack.dir/pack.cxx.obj: test/pack.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report C:\dev\fltk-1.3.2\CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/pack.dir/pack.cxx.obj"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles\pack.dir\pack.cxx.obj -c C:\dev\fltk-1.3.2\test\pack.cxx

test/CMakeFiles/pack.dir/pack.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pack.dir/pack.cxx.i"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -E C:\dev\fltk-1.3.2\test\pack.cxx > CMakeFiles\pack.dir\pack.cxx.i

test/CMakeFiles/pack.dir/pack.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pack.dir/pack.cxx.s"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -S C:\dev\fltk-1.3.2\test\pack.cxx -o CMakeFiles\pack.dir\pack.cxx.s

test/CMakeFiles/pack.dir/pack.cxx.obj.requires:
.PHONY : test/CMakeFiles/pack.dir/pack.cxx.obj.requires

test/CMakeFiles/pack.dir/pack.cxx.obj.provides: test/CMakeFiles/pack.dir/pack.cxx.obj.requires
	$(MAKE) -f test\CMakeFiles\pack.dir\build.make test/CMakeFiles/pack.dir/pack.cxx.obj.provides.build
.PHONY : test/CMakeFiles/pack.dir/pack.cxx.obj.provides

test/CMakeFiles/pack.dir/pack.cxx.obj.provides.build: test/CMakeFiles/pack.dir/pack.cxx.obj

# Object files for target pack
pack_OBJECTS = \
"CMakeFiles/pack.dir/pack.cxx.obj"

# External object files for target pack
pack_EXTERNAL_OBJECTS =

bin/examples/pack.exe: test/CMakeFiles/pack.dir/pack.cxx.obj
bin/examples/pack.exe: test/CMakeFiles/pack.dir/build.make
bin/examples/pack.exe: lib/libfltk.a
bin/examples/pack.exe: test/CMakeFiles/pack.dir/objects1.rsp
bin/examples/pack.exe: test/CMakeFiles/pack.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ..\bin\examples\pack.exe"
	cd /d C:\dev\fltk-1.3.2\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\pack.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/pack.dir/build: bin/examples/pack.exe
.PHONY : test/CMakeFiles/pack.dir/build

test/CMakeFiles/pack.dir/requires: test/CMakeFiles/pack.dir/pack.cxx.obj.requires
.PHONY : test/CMakeFiles/pack.dir/requires

test/CMakeFiles/pack.dir/clean:
	cd /d C:\dev\fltk-1.3.2\test && $(CMAKE_COMMAND) -P CMakeFiles\pack.dir\cmake_clean.cmake
.PHONY : test/CMakeFiles/pack.dir/clean

test/CMakeFiles/pack.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\dev\fltk-1.3.2 C:\dev\fltk-1.3.2\test C:\dev\fltk-1.3.2 C:\dev\fltk-1.3.2\test C:\dev\fltk-1.3.2\test\CMakeFiles\pack.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/pack.dir/depend
