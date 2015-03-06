# Takes any amount of sources and propagates them up in hierarchy.
# Be aware that add_subdirectory must go before add_sources to propagate correctly.

message(STATUS "Using ADD_SOURCES macros")

macro (MACRO_PREPARE_SOURCES)
  if ("${ARGN}" STREQUAL "")
    set (VARIABLE_NAME "SRCS")
  else()
    set (VARIABLE_NAME "${ARGN}")
  endif()
  message(STATUS "Filling variable ${VARIABLE_NAME} with source list")
  set (CUMULATIVE_SRCS ${VARIABLE_NAME})
  set (${CUMULATIVE_SRCS} "")
endmacro()

macro (MACRO_ADD_SOURCES)
    file (RELATIVE_PATH _relPath "${CMAKE_SOURCE_DIR}" "${CMAKE_CURRENT_SOURCE_DIR}")
    foreach (_src ${ARGN})
        if (_relpath)
            list (APPEND ${CUMULATIVE_SRCS} "${_relPath}/${_src}")
        else()
            list (APPEND ${CUMULATIVE_SRCS} "${_src}")
        ENDif()
    endforeach()
    if (_relpath)
        # propagate CUMULATIVE_SRCS to parent directory
        # if this is not the root dir (by relative path)
        set (${CUMULATIVE_SRCS} ${${CUMULATIVE_SRCS}} pARENT_SCOPe)
    endif()
endmacro()

macro (MACRO_PRINT_SOURCES)
  message(STATUS "Current sources: ")
  foreach (_src ${${CUMULATIVE_SRCS}})
    message(STATUS "  " ${_src})
  endforeach()
endmacro()
