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
include test/CMakeFiles/hello.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/hello.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/hello.dir/flags.make

test/CMakeFiles/hello.dir/hello.cxx.obj: test/CMakeFiles/hello.dir/flags.make
test/CMakeFiles/hello.dir/hello.cxx.obj: test/CMakeFiles/hello.dir/includes_CXX.rsp
test/CMakeFiles/hello.dir/hello.cxx.obj: test/hello.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report C:\dev\fltk-1.3.2\CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/hello.dir/hello.cxx.obj"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles\hello.dir\hello.cxx.obj -c C:\dev\fltk-1.3.2\test\hello.cxx

test/CMakeFiles/hello.dir/hello.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/hello.dir/hello.cxx.i"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -E C:\dev\fltk-1.3.2\test\hello.cxx > CMakeFiles\hello.dir\hello.cxx.i

test/CMakeFiles/hello.dir/hello.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/hello.dir/hello.cxx.s"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -S C:\dev\fltk-1.3.2\test\hello.cxx -o CMakeFiles\hello.dir\hello.cxx.s

test/CMakeFiles/hello.dir/hello.cxx.obj.requires:
.PHONY : test/CMakeFiles/hello.dir/hello.cxx.obj.requires

test/CMakeFiles/hello.dir/hello.cxx.obj.provides: test/CMakeFiles/hello.dir/hello.cxx.obj.requires
	$(MAKE) -f test\CMakeFiles\hello.dir\build.make test/CMakeFiles/hello.dir/hello.cxx.obj.provides.build
.PHONY : test/CMakeFiles/hello.dir/hello.cxx.obj.provides

test/CMakeFiles/hello.dir/hello.cxx.obj.provides.build: test/CMakeFiles/hello.dir/hello.cxx.obj

# Object files for target hello
hello_OBJECTS = \
"CMakeFiles/hello.dir/hello.cxx.obj"

# External object files for target hello
hello_EXTERNAL_OBJECTS =

bin/examples/hello.exe: test/CMakeFiles/hello.dir/hello.cxx.obj
bin/examples/hello.exe: test/CMakeFiles/hello.dir/build.make
bin/examples/hello.exe: lib/libfltk.a
bin/examples/hello.exe: test/CMakeFiles/hello.dir/objects1.rsp
bin/examples/hello.exe: test/CMakeFiles/hello.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ..\bin\examples\hello.exe"
	cd /d C:\dev\fltk-1.3.2\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\hello.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/hello.dir/build: bin/examples/hello.exe
.PHONY : test/CMakeFiles/hello.dir/build

test/CMakeFiles/hello.dir/requires: test/CMakeFiles/hello.dir/hello.cxx.obj.requires
.PHONY : test/CMakeFiles/hello.dir/requires

test/CMakeFiles/hello.dir/clean:
	cd /d C:\dev\fltk-1.3.2\test && $(CMAKE_COMMAND) -P CMakeFiles\hello.dir\cmake_clean.cmake
.PHONY : test/CMakeFiles/hello.dir/clean

test/CMakeFiles/hello.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\dev\fltk-1.3.2 C:\dev\fltk-1.3.2\test C:\dev\fltk-1.3.2 C:\dev\fltk-1.3.2\test C:\dev\fltk-1.3.2\test\CMakeFiles\hello.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/hello.dir/depend

