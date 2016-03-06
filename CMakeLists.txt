cmake_minimum_required(VERSION 3.1.0)
project(LocationContextMapping)

if(UNIX)
    set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -Wall -std=gnu++0x")
endif()

enable_testing()

add_subdirectory(test)
<<<<<<< HEAD
add_subdirectory(src)
=======
# add_subdirectory(src)
>>>>>>> af55415a7e607f755b5031f161ba20ed72f45225
