
#
# cmake rules for nos_common
# Author: LiuChuansen
# Date: 20230512
# 

cmake_minimum_required(VERSION 3.10)

project(nos_library)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED True)

## 得到工作空间的根目录，通过ROS的环境变量判断
if (NOT ROS_DISABLE)
execute_process(COMMAND "printenv" "ROS_DISTRO" OUTPUT_VARIABLE ROS_DISTRO)
string(REPLACE "\n" "" ROS_DISTRO "${ROS_DISTRO}")
endif()

if (ROS_DISTRO STREQUAL "foxy")
set(ROS_FOXY  ON)
set(ROS2 ON)
get_filename_component(WS_ROOT_DIR ${PROJECT_SOURCE_DIR}/../../ ABSOLUTE)
else()
get_filename_component(WS_ROOT_DIR ${PROJECT_SOURCE_DIR}/../ ABSOLUTE)
endif()

message(STATUS "=> WS_ROOT_DIR=${WS_ROOT_DIR}")
message(STATUS "=> ROS_DISTRO=${ROS_DISTRO}")
message(STATUS "=> ROS_FOXY=${ROS_FOXY}")

## 设定工作空间安装目录
if (NOT WS_INSTALL_PREFIX)
if (ROS2)
set(WS_INSTALL_PREFIX      ${WS_ROOT_DIR}/install/${PROJECT_NAME})
else()
set(WS_INSTALL_PREFIX      ${WS_ROOT_DIR}/install/${CMAKE_SYSTEM_PROCESSOR})
endif()
endif()

## 设定本地安装目录，一般与工作空间安装目录相同
if (NOT LOCAL_INSTALL_PREFIX)
set(LOCAL_INSTALL_PREFIX       ${WS_INSTALL_PREFIX})
endif()

message(STATUS "=> WS_INSTALL_PREFIX=${WS_INSTALL_PREFIX}")
message(STATUS "=> LOCAL_INSTALL_PREFIX=${LOCAL_INSTALL_PREFIX}")
## End 

include(rules/fmt.cmake)
include(rules/docopt.cmake)
include(rules/spdlog.cmake)
include(rules/libuv.cmake)
