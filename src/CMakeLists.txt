cmake_minimum_required(VERSION 3.10)
project(MyProject C)

set(CMAKE_CXX_FLAGS_DEBUG "${CMAKE_C_FLAGS_DEBUG} -g")
# Buat executable dari file sumber
add_executable(program
    r_bsp.c
    r_main.c
    # src/r_main.c
)