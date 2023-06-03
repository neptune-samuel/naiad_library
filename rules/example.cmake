include(ExternalProject)

set(LIBUV_PREFIX                ${CMAKE_BINARY_DIR}/libuv)
set(LIBUV_URL                   ${PROJECT_SOURCE_DIR}/zips/libuv-1.44.2.tar.gz)
set(LIBUV_INSTALL_PREFIX        ${LOCAL_INSTALL_PREFIX})
set(LIBUV_CMAKE_ARGS            -DCMAKE_INSTALL_PREFIX=${LIBUV_INSTALL_PREFIX})
# set(LIBUV_CONFIGURE    "")
# set(LIBUV_MAKE         cd ${LIBUV_PREFIX}/src/libuv-build && make)
# set(LIBUV_INSTALL      cd ${LIBUV_PREFIX}/src/libuv-build && make install)
# set(LIBUV_LIB          ${LIBUV_INSTALL_PREFIX}/lib/libuv_a.a)
# set(LIBUV_INCLUDE      ${LIBUV_INSTALL_PREFIX}/include)

ExternalProject_Add(libuv 
    URL                     ${LIBUV_URL}
    PREFIX                  ${LIBUV_PREFIX}
#    CONFIGURE_COMMAND       ${LIBUV_CONFIGURE}
#    BUILD_COMMAND           ${LIBUV_MAKE}
#    INSTALL_COMMAND         ${LIBUV_INSTALL}
    CMAKE_ARGS               ${LIBUV_CMAKE_ARGS}
)
