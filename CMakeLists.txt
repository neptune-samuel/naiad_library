
#
# cmake rules for nos_common
# Author: LiuChuansen
# Date: 20230512
# 

cmake_minimum_required(VERSION 3.10)

project(nos_library)

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED True)

## 获取ROS的环境变量
execute_process(COMMAND "printenv" "ROS_DISTRO" OUTPUT_VARIABLE ROS_DISTRO)
string(REPLACE "\n" "" ROS_DISTRO "${ROS_DISTRO}")

if (ROS_DISTRO STREQUAL "foxy")
set(ROS_FOXY  ON)
get_filename_component(WS_TOPDIR ${PROJECT_SOURCE_DIR}/../../ ABSOLUTE)
endif()
message(STATUS "=> WS_TOPDIR=${WS_TOPDIR}")
message(STATUS "=> ROS_DISTRO=${ROS_DISTRO}")
message(STATUS "=> ROS_FOXY=${ROS_FOXY}")

## General rules for all nos targets
if (NOT WS_TOPDIR)
get_filename_component(WS_TOPDIR ${PROJECT_SOURCE_DIR}/../ ABSOLUTE)
endif()
if (NOT NOS_INSTALL_PREFIX)
if (ROS_FOXY)
set(NOS_INSTALL_PREFIX      ${WS_TOPDIR}/install/${PROJECT_NAME})
else()
set(NOS_INSTALL_PREFIX      ${WS_TOPDIR}/install/${CMAKE_SYSTEM_PROCESSOR})
endif()
endif()

## set lock install dir
set(LOCAL_INSTALL_DIR       ${NOS_INSTALL_PREFIX})

message(STATUS "=> NOS_INSTALL_PREFIX=${NOS_INSTALL_PREFIX}")
message(STATUS "=> LOCAL_INSTALL_DIR=${LOCAL_INSTALL_DIR}")
## End 

include(rules/fmt.cmake)
# include(rules/docopt.cmake)
# include(rules/spdlog.cmake)
# include(rules/libuv.cmake)
