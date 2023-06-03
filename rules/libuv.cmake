
include(ExternalProject)

set(LIBUV_URL                   ${ZIPS_DIR}/libuv-1.44.2.tar.gz)
set(LIBUV_CMAKE_ARGS            -DCMAKE_INSTALL_PREFIX=${LIBS_INSTALL_DIR})

ExternalProject_Add(libuv 
    URL                     ${LIBUV_URL}
    CMAKE_ARGS               ${LIBUV_CMAKE_ARGS}
)
