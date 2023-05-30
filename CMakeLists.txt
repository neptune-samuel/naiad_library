
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

## General rules for all nos targets
if (NOT TOPDIR)
get_filename_component(TOPDIR ${PROJECT_SOURCE_DIR}/../ ABSOLUTE)
endif()
if (NOT NOS_INSTALL_PREFIX)
set(NOS_INSTALL_PREFIX      ${TOPDIR}/install/${CMAKE_SYSTEM_PROCESSOR})
endif()

## set lock install dir
set(LOCAL_INSTALL_DIR       ${NOS_INSTALL_PREFIX})

message(STATUS "=> TOPDIR=${TOPDIR}")
message(STATUS "=> NOS_INSTALL_PREFIX=${NOS_INSTALL_PREFIX}")
message(STATUS "=> LOCAL_INSTALL_DIR=${LOCAL_INSTALL_DIR}")
## End 

include(rules/fmt.cmake)
include(rules/docopt.cmake)
include(rules/spdlog.cmake)
include(rules/libuv.cmake)
