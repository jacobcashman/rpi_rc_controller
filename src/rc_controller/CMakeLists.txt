# %Tag(FULLTEXT)%
cmake_minimum_required(VERSION 2.8.3)
project( rc_controller )

set(CMAKE_CXX_FLAGS
  "${CMAKE_CXX_FLAGS} ${SSE_FLAGS} -g -Wall -std=c++0x"
)
find_package(catkin REQUIRED COMPONENTS roscpp rospy std_msgs genmsg rosbag)
## Generate added messages and services
generate_messages(DEPENDENCIES std_msgs)

## Declare a catkin package
catkin_package(CATKIN_DEPENDS roscpp std_msgs)

## Build talker and listener
include_directories(include 
					${catkin_INCLUDE_DIRS} 
    				#${Boost_INCLUDE_DIRS}
					)

# We need boost libraries
find_library(BOOST_SERIALIZATION boost_serialization)
if (NOT BOOST_SERIALIZATION)
	message(FATAL_ERROR "Can't find libboost_serialization")
endif()

find_library(BOOST_SYSTEM boost_system)
if (NOT BOOST_SYSTEM)
	message(FATAL_ERROR "Can't find libboost_serialization")
endif()


catkin_install_python  ( PROGRAMS src/rc_controller.py DESTINATION ${CATKIN_PACKAGE_BIN_DESTINATION})

# %EndTag(FULLTEXT)%
