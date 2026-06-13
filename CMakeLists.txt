cmake_minimum_required(VERSION 3.16)
project(union LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

add_library(union_core core.cpp)
target_include_directories(union_core PUBLIC ${CMAKE_CURRENT_SOURCE_DIR})

enable_testing()
add_executable(union_core_tests tests/test_core.cpp core.cpp)
target_include_directories(union_core_tests PRIVATE ${CMAKE_CURRENT_SOURCE_DIR})
add_test(NAME union_core_tests COMMAND union_core_tests)
