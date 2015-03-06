
cmake_minimum_required(VERSION 2.8.3)

# Global vars
set(CMAKE_PROJECT_NAME "ProjectX")
#set(EXECUTABLE_NAME "Xman")

set(EXECUTABLE_VERSION_MAJOR "0")
set(EXECUTABLE_VERSION_MINOR "0")
set(EXECUTABLE_VERSION_PATCH "0")
set(EXECUTABLE_VERSION "${EXECUTABLE_VERSION_MAJOR}.${EXECUTABLE_VERSION_MINOR}.${EXECUTABLE_VERSION_PATCH}")

set(CMAKE_SYSTEM_NAME "linux")
set(CMAKE_CXX_COMPILER g++)
set(CMAKE_C_COMPILER gcc)
set (CMAKE_LINKER ld)
set (CMAKE_CXX_LINKER_PREFERENCE ld)

# Additional CMake modules, specific for this project
set(CMAKE_MODULE_PATH
  ${CMAKE_SOURCE_DIR}/CMake
  )

# Load those modules's cmake 
include(default)
include(macro)
include(platform)

# Project command is here, to set some values correctly.
project(${CMAKE_PROJECT_NAME})

message(STATUS "Current built type: ${CMAKE_BUILD_TYPE}")
message(STATUS "Current build type flags: ${CMAKE_CXX_FLAGS_${CMAKE_BUILD_TYPE}}")
message(STATUS "Configuring application ${APPLICATION_NAME}")

macro_prepare_sources(PROJECT_SOURCES)

add_subdirectory( src )
macro_add_sources ( ${CMAKE_SOURCE_DIR}/src/main.cpp
					)
#line below outputs all included source.
macro_print_sources()

#APP
set(EXECUTABLE_NAME "record")		
# Include fodler
set ( CMAKE_INCLUDE_PATH 
	${CMAKE_SOURCE_DIR}/lib/
	)
message(STATUS "Current include path: ${CMAKE_INCLUDE_PATH}")

include_directories(
					${CMAKE_SOURCE_DIR}/lib
				)

add_executable(
    ${EXECUTABLE_NAME}
    ${CMAKE_SOURCE_DIR}/src/record.cpp
)

#target_link_libraries(
#    ${EXECUTABLE_NAME}
#)


set(EXECUTABLE_NAME "Life")		
# Include fodler

include_directories(
					${CMAKE_SOURCE_DIR}/lib/game/include
					)

add_executable(
    ${EXECUTABLE_NAME}
    ${CMAKE_SOURCE_DIR}/src/life.cpp
)

#target_link_libraries(
#    ${EXECUTABLE_NAME}
#)
	