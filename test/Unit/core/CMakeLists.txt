cmake_minimum_required(VERSION 3.1.0)
project (UT_Context_Core C CXX)

file(GLOB SRCS *.cpp
    *.h
    ../main.cpp)

ADD_EXECUTABLE(${PROJECT_NAME} ${SRCS})

TARGET_LINK_LIBRARIES(${PROJECT_NAME}
    Context_Core
    libgtest
    libgmock
)

add_test(NAME ${PROJECT_NAME} COMMAND ${PROJECT_NAME})