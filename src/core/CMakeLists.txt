cmake_minimum_required(VERSION 3.1.0)
project(Context_Core C CXX)

MESSAGE(${PROJECT_SOURCE_DIR})

file(GLOB_RECURSE SRCS 
    ${PROJECT_SOURCE_DIR}/include/*.h
    ${PROJECT_SOURCE_DIR}/*.cpp)

# Declare the library
add_library(${PROJECT_NAME} STATIC ${SRCS})

set_target_properties(${PROJECT_NAME} PROPERTIES LINKER_LANGUAGE CXX)

# target_link_libraries(${PROJECT_NAME}
#   libPlugin
#   dl)

# Specify here the include directories exported
# by this library
target_include_directories(${PROJECT_NAME} PUBLIC
    ${PROJECT_SOURCE_DIR}/include)

# install(TARGETS TokenLexical DESTINATION bin)