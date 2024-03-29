
#
# cmake rules for naiad_library
# Author: LiuChuansen
# Date: 20230512
# 
# 编译分两个步骤: 一是把每个库当作外部工程，单独编译, 并安装到统一的目录 build/libs-install
#                二是安装，将libs-install的上当安装到目标位置

cmake_minimum_required(VERSION 3.10)

project(naiad_library)

set(RULES_DIR ${CMAKE_CURRENT_SOURCE_DIR}/rules)
set(LIBS_BUILD_DIR ${CMAKE_CURRENT_SOURCE_DIR}/libs-build)
## 设定本地安装目录，临时安装目录
set(LIBS_INSTALL_DIR ${PROJECT_BINARY_DIR}/libs-install)

include(${RULES_DIR}/ws_common.cmake)

## ROS环境下，安装目录由ROS指定, 非ROS环境下，需自行设定默认安装目录
if (NOT WS_ROS)
set(CMAKE_INSTALL_PREFIX ${WS_INSTALL_PREFIX})
endif()


message(STATUS "=> CMAKE_INSTALL_PREFIX=${CMAKE_INSTALL_PREFIX}")
message(STATUS "=> LOCAL_INSTALL_PREFIX=${LOCAL_INSTALL_PREFIX}")
## End 

if (CMAKE_TOOLCHAIN_FILE)
set(BUILD_LIBS_CMAKE_ARGS -DLIBS_INSTALL_DIR=${LIBS_INSTALL_DIR} -DCMAKE_TOOLCHAIN_FILE=${CMAKE_TOOLCHAIN_FILE})
else()
set(BUILD_LIBS_CMAKE_ARGS -DLIBS_INSTALL_DIR=${LIBS_INSTALL_DIR})
endif()

include(ExternalProject)
ExternalProject_Add(build_libs 
    SOURCE_DIR               ${LIBS_BUILD_DIR}
    CMAKE_ARGS               ${BUILD_LIBS_CMAKE_ARGS}
)

## 安装目标
install(DIRECTORY ${LIBS_INSTALL_DIR}/include/ DESTINATION include)
install(DIRECTORY ${LIBS_INSTALL_DIR}/lib/ DESTINATION lib)
install(DIRECTORY ${LIBS_INSTALL_DIR}/share/ DESTINATION share)

if (WS_ROS)
# find dependencies
find_package(ament_cmake REQUIRED)
endif() ## end ros
