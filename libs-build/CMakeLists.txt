
cmake_minimum_required(VERSION 3.10)

project(build_libs)

set(RULES_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../rules)
set(ZIPS_DIR ${CMAKE_CURRENT_SOURCE_DIR}/../zips)

if (NOT LIBS_INSTALL_DIR)
set(LIBS_INSTALL_DIR ${CMAKE_CURRENT_BINARY_DIR}/install)
endif()

include(${RULES_DIR}/fmt.cmake)
include(${RULES_DIR}/docopt.cmake)
include(${RULES_DIR}/libuv.cmake)
include(${RULES_DIR}/spdlog.cmake)
include(${RULES_DIR}/cxxopts.cmake)

## 设定空的安装目标
install(CODE "message(\"Skipping install target.\")")
