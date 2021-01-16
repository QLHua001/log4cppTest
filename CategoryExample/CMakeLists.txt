cmake_minimum_required(VERSION 3.10)
project(LOG4CPPDEMO)


set(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -pthread")
set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pthread")

set(CMAKE_VERBOSE_MAKEFILE ON)

include_directories(/home/qlh/myPath/include)


link_directories(/home/qlh/myPath/lib)

link_libraries(log4cpp)

aux_source_directory(./ SRC_LIST)

add_executable(Log4cppTest ${SRC_LIST})

