cmake_minimum_required(VERSION 3.14)

project(oc LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(OpenCASCADE REQUIRED)
message(STATUS "Open Cascade version: ${OpenCASCADE_MAJOR_VERSION}.${OpenCASCADE_MINOR_VERSION}.${OpenCASCADE_MAINTENANCE_VERSION}")
include_directories(${CMAKE_CURRENT_SOURCE_DIR} ${OpenCASCADE_INCLUDE_DIR})

find_package(SWIG REQUIRED)
include(${SWIG_USE_FILE})

set(CMAKE_SWIG_FLAGS "")

# Dependencies
# ============

link_directories(${OpenCASCADE_LIBRARY_DIR})

#oc library
set_source_files_properties(${CMAKE_CURRENT_SOURCE_DIR}/src/oc.i PROPERTIES CPLUSPLUS ON)
set_source_files_properties(${CMAKE_CURRENT_SOURCE_DIR}/src/oc.i PROPERTIES SWIG_FLAGS "-includeall")
swig_add_library(oc 
                 TYPE SHARED
                 LANGUAGE cffi
                 OUTPUT_DIR ${CMAKE_CURRENT_SOURCE_DIR}/src
                 OUTFILE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/src
                 SOURCES ${CMAKE_CURRENT_SOURCE_DIR}/src/oc.i
                )
target_link_libraries(oc ${OpenCASCADE_LIBRARIES})

#vis library
set_source_files_properties(${CMAKE_CURRENT_SOURCE_DIR}/src/vis/vis.i PROPERTIES CPLUSPLUS ON)
set_source_files_properties(${CMAKE_CURRENT_SOURCE_DIR}/src/vis/vis.i PROPERTIES SWIG_FLAGS "-includeall")
swig_add_library(vis 
                 TYPE SHARED
                 LANGUAGE cffi
                 OUTPUT_DIR ${CMAKE_CURRENT_SOURCE_DIR}/src/vis
                 OUTFILE_DIR ${CMAKE_CURRENT_SOURCE_DIR}/src/vis
                 SOURCES ${CMAKE_CURRENT_SOURCE_DIR}/src/vis/vis.i
                )
target_link_libraries(vis ${OpenCASCADE_LIBRARIES})

install(TARGETS oc RUNTIME DESTINATION ${CMAKE_INSTALL_PREFIX}/bin)
install(TARGETS vis RUNTIME DESTINATION ${CMAKE_INSTALL_PREFIX}/bin)

