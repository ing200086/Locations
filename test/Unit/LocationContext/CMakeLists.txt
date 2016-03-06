cmake_minimum_required(VERSION 3.1.0)
project (UT_LocationContext C CXX)

file(GLOB SRCS *.cpp
    *.h
    ../main.cpp)

ADD_EXECUTABLE(${PROJECT_NAME} ${SRCS})

TARGET_LINK_LIBRARIES(${PROJECT_NAME}
<<<<<<< HEAD
    Context_Core
=======
>>>>>>> af55415a7e607f755b5031f161ba20ed72f45225
    libgtest
    libgmock
)

add_test(NAME ${PROJECT_NAME} COMMAND ${PROJECT_NAME})