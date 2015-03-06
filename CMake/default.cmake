 
# Here should go compiler specific flags and stuff.

# This project uses C++11.
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++0x")

# Debug has -D_DEBUG
set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_CXX_FLAGS_DEBUG} -D_DEBUG")

# Release
set(CMAKE_CXX_FLAGS_RELEASE "-O2")

SET(CMAKE_INCLUDE_CURRENT_DIR ON)

# Put the include dirs which are in the source or build tree
# before all other include dirs, so the headers in the sources
# are prefered over the already installed ones
# since cmake 2.4.1
SET(CMAKE_INCLUDE_DIRECTORIES_PROJECT_BEFORE ON)

# Use colored output
# since cmake 2.4.0
SET(CMAKE_COLOR_MAKEFILE ON)

# Set the default build type to debug
IF(NOT CMAKE_CONFIGURATION_TYPES AND NOT CMAKE_BUILD_TYPE)
  SET(CMAKE_BUILD_TYPE "Debug" CACHE STRING "Choose the type of build, options are: None (CMAKE_CXX_FLAGS used) Debug Release RelWithDebInfo MinSizeRel.")
ENDIF(NOT CMAKE_CONFIGURATION_TYPES AND NOT CMAKE_BUILD_TYPE) 

SET(CMAKE_DEBUG_POSTFIX "_d")

IF(CMAKE_BUILD_TYPE)
  SET(CMAKE_RUNTIME_OUTPUT_DIRECTORY ${CMAKE_BUILD_TYPE})
ELSE(CMAKE_BUILD_TYPE)
  SET(CMAKE_RUNTIME_OUTPUT_DIRECTORY "Bin")
ENDIF(CMAKE_BUILD_TYPE)
