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
include test/CMakeFiles/pixmap_browser.dir/depend.make

# Include the progress variables for this target.
include test/CMakeFiles/pixmap_browser.dir/progress.make

# Include the compile flags for this target's objects.
include test/CMakeFiles/pixmap_browser.dir/flags.make

test/CMakeFiles/pixmap_browser.dir/pixmap_browser.cxx.obj: test/CMakeFiles/pixmap_browser.dir/flags.make
test/CMakeFiles/pixmap_browser.dir/pixmap_browser.cxx.obj: test/CMakeFiles/pixmap_browser.dir/includes_CXX.rsp
test/CMakeFiles/pixmap_browser.dir/pixmap_browser.cxx.obj: test/pixmap_browser.cxx
	$(CMAKE_COMMAND) -E cmake_progress_report C:\dev\fltk-1.3.2\CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object test/CMakeFiles/pixmap_browser.dir/pixmap_browser.cxx.obj"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles\pixmap_browser.dir\pixmap_browser.cxx.obj -c C:\dev\fltk-1.3.2\test\pixmap_browser.cxx

test/CMakeFiles/pixmap_browser.dir/pixmap_browser.cxx.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/pixmap_browser.dir/pixmap_browser.cxx.i"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -E C:\dev\fltk-1.3.2\test\pixmap_browser.cxx > CMakeFiles\pixmap_browser.dir\pixmap_browser.cxx.i

test/CMakeFiles/pixmap_browser.dir/pixmap_browser.cxx.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/pixmap_browser.dir/pixmap_browser.cxx.s"
	cd /d C:\dev\fltk-1.3.2\test && C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_FLAGS) -S C:\dev\fltk-1.3.2\test\pixmap_browser.cxx -o CMakeFiles\pixmap_browser.dir\pixmap_browser.cxx.s

test/CMakeFiles/pixmap_browser.dir/pixmap_browser.cxx.obj.requires:
.PHONY : test/CMakeFiles/pixmap_browser.dir/pixmap_browser.cxx.obj.requires

test/CMakeFiles/pixmap_browser.dir/pixmap_browser.cxx.obj.provides: test/CMakeFiles/pixmap_browser.dir/pixmap_browser.cxx.obj.requires
	$(MAKE) -f test\CMakeFiles\pixmap_browser.dir\build.make test/CMakeFiles/pixmap_browser.dir/pixmap_browser.cxx.obj.provides.build
.PHONY : test/CMakeFiles/pixmap_browser.dir/pixmap_browser.cxx.obj.provides

test/CMakeFiles/pixmap_browser.dir/pixmap_browser.cxx.obj.provides.build: test/CMakeFiles/pixmap_browser.dir/pixmap_browser.cxx.obj

# Object files for target pixmap_browser
pixmap_browser_OBJECTS = \
"CMakeFiles/pixmap_browser.dir/pixmap_browser.cxx.obj"

# External object files for target pixmap_browser
pixmap_browser_EXTERNAL_OBJECTS =

bin/examples/pixmap_browser.exe: test/CMakeFiles/pixmap_browser.dir/pixmap_browser.cxx.obj
bin/examples/pixmap_browser.exe: test/CMakeFiles/pixmap_browser.dir/build.make
bin/examples/pixmap_browser.exe: lib/libfltk.a
bin/examples/pixmap_browser.exe: lib/libfltk_images.a
bin/examples/pixmap_browser.exe: lib/libfltk.a
bin/examples/pixmap_browser.exe: lib/libfltk_png.a
bin/examples/pixmap_browser.exe: lib/libfltk_jpeg.a
bin/examples/pixmap_browser.exe: lib/libfltk_z.a
bin/examples/pixmap_browser.exe: test/CMakeFiles/pixmap_browser.dir/objects1.rsp
bin/examples/pixmap_browser.exe: test/CMakeFiles/pixmap_browser.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ..\bin\examples\pixmap_browser.exe"
	cd /d C:\dev\fltk-1.3.2\test && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\pixmap_browser.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
test/CMakeFiles/pixmap_browser.dir/build: bin/examples/pixmap_browser.exe
.PHONY : test/CMakeFiles/pixmap_browser.dir/build

test/CMakeFiles/pixmap_browser.dir/requires: test/CMakeFiles/pixmap_browser.dir/pixmap_browser.cxx.obj.requires
.PHONY : test/CMakeFiles/pixmap_browser.dir/requires

test/CMakeFiles/pixmap_browser.dir/clean:
	cd /d C:\dev\fltk-1.3.2\test && $(CMAKE_COMMAND) -P CMakeFiles\pixmap_browser.dir\cmake_clean.cmake
.PHONY : test/CMakeFiles/pixmap_browser.dir/clean

test/CMakeFiles/pixmap_browser.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\dev\fltk-1.3.2 C:\dev\fltk-1.3.2\test C:\dev\fltk-1.3.2 C:\dev\fltk-1.3.2\test C:\dev\fltk-1.3.2\test\CMakeFiles\pixmap_browser.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : test/CMakeFiles/pixmap_browser.dir/depend

