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
include test/CMakeFiles/device.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/device.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/device.dir/flags.make

test/CMakeFiles/device.dir/device.cxx.obj: test/CMakeFiles/device.dir/flags.make
test/CMakeFiles/device.dir/device.cxx.obj: test/CMakeFiles/device.dir/includes_CXX.rsp
test/CMakeFiles/device.dir/device.cxx.obj: test/device.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report C:\dev\fltk-1.3.2\CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/device.dir/device.cxx.obj"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles\device.dir\device.cxx.obj -c C:\dev\fltk-1.3.2\test\device.cxx

test/CMakeFiles/device.dir/device.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/device.dir/device.cxx.i"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -E C:\dev\fltk-1.3.2\test\device.cxx > CMakeFiles\device.dir\device.cxx.i

test/CMakeFiles/device.dir/device.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/device.dir/device.cxx.s"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -S C:\dev\fltk-1.3.2\test\device.cxx -o CMakeFiles\device.dir\device.cxx.s

test/CMakeFiles/device.dir/device.cxx.obj.requires:
.PHONY : test/CMakeFiles/device.dir/device.cxx.obj.requires

test/CMakeFiles/device.dir/device.cxx.obj.provides: test/CMakeFiles/device.dir/device.cxx.obj.requires
	$(MAKE) -f test\CMakeFiles\device.dir\build.make test/CMakeFiles/device.dir/device.cxx.obj.provides.build
.PHONY : test/CMakeFiles/device.dir/device.cxx.obj.provides

test/CMakeFiles/device.dir/device.cxx.obj.provides.build: test/CMakeFiles/device.dir/device.cxx.obj

# Object files for target device
device_OBJECTS = \
"CMakeFiles/device.dir/device.cxx.obj"

# External object files for target device
device_EXTERNAL_OBJECTS =

bin/examples/device.exe: test/CMakeFiles/device.dir/device.cxx.obj
bin/examples/device.exe: test/CMakeFiles/device.dir/build.make
bin/examples/device.exe: lib/libfltk.a
bin/examples/device.exe: test/CMakeFiles/device.dir/objects1.rsp
bin/examples/device.exe: test/CMakeFiles/device.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ..\bin\examples\device.exe"
	cd /d C:\dev\fltk-1.3.2\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\device.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/device.dir/build: bin/examples/device.exe
.PHONY : test/CMakeFiles/device.dir/build

test/CMakeFiles/device.dir/requires: test/CMakeFiles/device.dir/device.cxx.obj.requires
.PHONY : test/CMakeFiles/device.dir/requires

test/CMakeFiles/device.dir/clean:
	cd /d C:\dev\fltk-1.3.2\test && $(CMAKE_COMMAND) -P CMakeFiles\device.dir\cmake_clean.cmake
.PHONY : test/CMakeFiles/device.dir/clean

test/CMakeFiles/device.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\dev\fltk-1.3.2 C:\dev\fltk-1.3.2\test C:\dev\fltk-1.3.2 C:\dev\fltk-1.3.2\test C:\dev\fltk-1.3.2\test\CMakeFiles\device.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/device.dir/depend
