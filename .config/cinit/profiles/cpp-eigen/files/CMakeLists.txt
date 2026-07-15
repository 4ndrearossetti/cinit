cmake_minimum_required(VERSION 3.16)
project({CINIT_NAME} LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_EXPORT_COMPILE_COMMANDS ON)

find_package(Eigen3 REQUIRED)

add_executable(${PROJECT_NAME} src/main.cpp)
target_link_libraries(${PROJECT_NAME} PRIVATE Eigen3::Eigen)

target_compile_options(${PROJECT_NAME} PRIVATE
    -Wall -Wextra
    $<$<CONFIG:Release>:-O2 -march=native>)
