
#
# cmake rules for nos_common
# Author: LiuChuansen
# Date: 20230512
# 

cmake_minimum_required(VERSION 3.10)

project(nos_library)

message(STATUS "=> enter project ${PROJECT_NAME}")
message(STATUS "=> PROJECT_SOURCE_DIR=${PROJECT_SOURCE_DIR}")
message(STATUS "=> PROJECT_BINARY_DIR=${PROJECT_BINARY_DIR}")
message(STATUS "=> CMAKE_BINARY_DIR=${CMAKE_BINARY_DIR}")

set(CMAKE_CXX_STANDARD 14)
set(CMAKE_CXX_STANDARD_REQUIRED True)

## use topdir
get_filename_component(TOPDIR ${PROJECT_SOURCE_DIR}/../ ABSOLUTE)
message(STATUS "=> set TOPDIR=${TOPDIR}")

set(LOCAL_INSTALL_DIR ${TOPDIR}/install/${CMAKE_SYSTEM_PROCESSOR})
message(STATUS "=> LOCAL_INSTALL_DIR=${LOCAL_INSTALL_DIR}")

include(rules/fmt.cmake)
include(rules/docopt.cmake)
include(rules/spdlog.cmake)
include(rules/libuv.cmake)
