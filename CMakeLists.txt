cmake_minimum_required(VERSION 2.8.6)
project(speedup)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11 -g")

set(SPEEDUP_SRCS
  xml_reader.cc)

add_library(speedup SHARED ${SPEEDUP_SRCS})

add_executable(test test.cc)
target_link_libraries(test speedup)




