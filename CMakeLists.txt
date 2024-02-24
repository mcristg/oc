cmake_minimum_required(VERSION 3.14)

project(oc LANGUAGES CXX)

#set(CMAKE_INCLUDE_CURRENT_DIR OFF)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(OpenCASCADE REQUIRED)
include_directories(${CMAKE_CURRENT_SOURCE_DIR} ${OpenCASCADE_INCLUDE_DIR})

# Dependencies
# ============
file(GLOB oc_SRC
    ${CMAKE_CURRENT_SOURCE_DIR}/src/oc_wrap.cxx
    )

link_directories(${OpenCASCADE_LIBRARY_DIR})

add_library(oc SHARED ${oc_SRC})

target_link_libraries(oc ${OpenCASCADE_LIBRARIES})

install(TARGETS oc RUNTIME DESTINATION ${CMAKE_INSTALL_PREFIX}/bin)

