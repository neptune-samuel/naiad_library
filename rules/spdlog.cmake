
include(ExternalProject)

set(SPDLOG_URL                  ${ZIPS_DIR}/spdlog-1.11.0.tar.gz)
set(SPDLOG_CMAKE_ARGS           -DCMAKE_INSTALL_PREFIX=${LIBS_INSTALL_DIR} -DSPDLOG_BUILD_EXAMPLE=OFF -DCMAKE_TOOLCHAIN_FILE=${CMAKE_TOOLCHAIN_FILE})

ExternalProject_Add(spdlog 
    URL                     ${SPDLOG_URL}
    CMAKE_ARGS               ${SPDLOG_CMAKE_ARGS}
)
