# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.9

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


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

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.9.0/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.9.0/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/mingxuan/Desktop/workspace/go_game/deltago

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/mingxuan/Desktop/workspace/go_game/deltago

# Include any dependencies generated for this target.
include CMakeFiles/gouct.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/gouct.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/gouct.dir/flags.make

CMakeFiles/gouct.dir/gouct/GoUctBoard.cpp.o: CMakeFiles/gouct.dir/flags.make
CMakeFiles/gouct.dir/gouct/GoUctBoard.cpp.o: gouct/GoUctBoard.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/mingxuan/Desktop/workspace/go_game/deltago/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/gouct.dir/gouct/GoUctBoard.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gouct.dir/gouct/GoUctBoard.cpp.o -c /Users/mingxuan/Desktop/workspace/go_game/deltago/gouct/GoUctBoard.cpp

CMakeFiles/gouct.dir/gouct/GoUctBoard.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gouct.dir/gouct/GoUctBoard.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mingxuan/Desktop/workspace/go_game/deltago/gouct/GoUctBoard.cpp > CMakeFiles/gouct.dir/gouct/GoUctBoard.cpp.i

CMakeFiles/gouct.dir/gouct/GoUctBoard.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gouct.dir/gouct/GoUctBoard.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mingxuan/Desktop/workspace/go_game/deltago/gouct/GoUctBoard.cpp -o CMakeFiles/gouct.dir/gouct/GoUctBoard.cpp.s

CMakeFiles/gouct.dir/gouct/GoUctBoard.cpp.o.requires:

.PHONY : CMakeFiles/gouct.dir/gouct/GoUctBoard.cpp.o.requires

CMakeFiles/gouct.dir/gouct/GoUctBoard.cpp.o.provides: CMakeFiles/gouct.dir/gouct/GoUctBoard.cpp.o.requires
	$(MAKE) -f CMakeFiles/gouct.dir/build.make CMakeFiles/gouct.dir/gouct/GoUctBoard.cpp.o.provides.build
.PHONY : CMakeFiles/gouct.dir/gouct/GoUctBoard.cpp.o.provides

CMakeFiles/gouct.dir/gouct/GoUctBoard.cpp.o.provides.build: CMakeFiles/gouct.dir/gouct/GoUctBoard.cpp.o


CMakeFiles/gouct.dir/gouct/GoUctUtil.cpp.o: CMakeFiles/gouct.dir/flags.make
CMakeFiles/gouct.dir/gouct/GoUctUtil.cpp.o: gouct/GoUctUtil.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/mingxuan/Desktop/workspace/go_game/deltago/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/gouct.dir/gouct/GoUctUtil.cpp.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/gouct.dir/gouct/GoUctUtil.cpp.o -c /Users/mingxuan/Desktop/workspace/go_game/deltago/gouct/GoUctUtil.cpp

CMakeFiles/gouct.dir/gouct/GoUctUtil.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/gouct.dir/gouct/GoUctUtil.cpp.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/mingxuan/Desktop/workspace/go_game/deltago/gouct/GoUctUtil.cpp > CMakeFiles/gouct.dir/gouct/GoUctUtil.cpp.i

CMakeFiles/gouct.dir/gouct/GoUctUtil.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/gouct.dir/gouct/GoUctUtil.cpp.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/mingxuan/Desktop/workspace/go_game/deltago/gouct/GoUctUtil.cpp -o CMakeFiles/gouct.dir/gouct/GoUctUtil.cpp.s

CMakeFiles/gouct.dir/gouct/GoUctUtil.cpp.o.requires:

.PHONY : CMakeFiles/gouct.dir/gouct/GoUctUtil.cpp.o.requires

CMakeFiles/gouct.dir/gouct/GoUctUtil.cpp.o.provides: CMakeFiles/gouct.dir/gouct/GoUctUtil.cpp.o.requires
	$(MAKE) -f CMakeFiles/gouct.dir/build.make CMakeFiles/gouct.dir/gouct/GoUctUtil.cpp.o.provides.build
.PHONY : CMakeFiles/gouct.dir/gouct/GoUctUtil.cpp.o.provides

CMakeFiles/gouct.dir/gouct/GoUctUtil.cpp.o.provides.build: CMakeFiles/gouct.dir/gouct/GoUctUtil.cpp.o


# Object files for target gouct
gouct_OBJECTS = \
"CMakeFiles/gouct.dir/gouct/GoUctBoard.cpp.o" \
"CMakeFiles/gouct.dir/gouct/GoUctUtil.cpp.o"

# External object files for target gouct
gouct_EXTERNAL_OBJECTS =

libgouct.a: CMakeFiles/gouct.dir/gouct/GoUctBoard.cpp.o
libgouct.a: CMakeFiles/gouct.dir/gouct/GoUctUtil.cpp.o
libgouct.a: CMakeFiles/gouct.dir/build.make
libgouct.a: CMakeFiles/gouct.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/mingxuan/Desktop/workspace/go_game/deltago/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX static library libgouct.a"
	$(CMAKE_COMMAND) -P CMakeFiles/gouct.dir/cmake_clean_target.cmake
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/gouct.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/gouct.dir/build: libgouct.a

.PHONY : CMakeFiles/gouct.dir/build

CMakeFiles/gouct.dir/requires: CMakeFiles/gouct.dir/gouct/GoUctBoard.cpp.o.requires
CMakeFiles/gouct.dir/requires: CMakeFiles/gouct.dir/gouct/GoUctUtil.cpp.o.requires

.PHONY : CMakeFiles/gouct.dir/requires

CMakeFiles/gouct.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/gouct.dir/cmake_clean.cmake
.PHONY : CMakeFiles/gouct.dir/clean

CMakeFiles/gouct.dir/depend:
	cd /Users/mingxuan/Desktop/workspace/go_game/deltago && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/mingxuan/Desktop/workspace/go_game/deltago /Users/mingxuan/Desktop/workspace/go_game/deltago /Users/mingxuan/Desktop/workspace/go_game/deltago /Users/mingxuan/Desktop/workspace/go_game/deltago /Users/mingxuan/Desktop/workspace/go_game/deltago/CMakeFiles/gouct.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/gouct.dir/depend
