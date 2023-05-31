
include(ExternalProject)

set(SPDLOG_PREFIX               ${CMAKE_BINARY_DIR}/spdlog)
set(SPDLOG_URL                  ${PROJECT_SOURCE_DIR}/zips/spdlog-1.11.0.tar.gz)
set(SPDLOG_INSTALL_PREFIX       ${LOCAL_INSTALL_PREFIX})

set(SPDLOG_CMAKE_ARGS           -DCMAKE_INSTALL_PREFIX=${SPDLOG_INSTALL_PREFIX} -DSPDLOG_BUILD_EXAMPLE=OFF -DCMAKE_BUILD_TYPE=Debug)
# set(SPDLOG_CONFIGURE          "")
# set(SPDLOG_MAKE               cd ${SPDLOG_PREFIX}/src/spdlog-build && make)
# set(SPDLOG_INSTALL            cd ${SPDLOG_PREFIX}/src/spdlog-build && make install)

# set(SPDLOG_LIB          ${SPDLOG_INSTALL_PREFIX}/lib/libspdlog.a)
# set(SPDLOG_INCLUDE      ${SPDLOG_INSTALL_PREFIX}/include)

ExternalProject_Add(spdlog 
    URL                     ${SPDLOG_URL}
    PREFIX                  ${SPDLOG_PREFIX}
#    CONFIGURE_COMMAND       ${SPDLOG_CONFIGURE}
#    BUILD_COMMAND           ${SPDLOG_MAKE}
#    INSTALL_COMMAND         ${SPDLOG_INSTALL}
    CMAKE_ARGS               ${SPDLOG_CMAKE_ARGS}
)
