
include(ExternalProject)

set(LIBFMT_PREFIX               ${CMAKE_BINARY_DIR}/libfmt)
set(LIBFMT_URL                  ${PROJECT_SOURCE_DIR}/zips/fmt-8.1.1.tar.gz)
set(LIBFMT_INSTALL_PREFIX       ${LOCAL_INSTALL_DIR})

set(LIBFMT_CMAKE_ARGS           -DFMT_TEST=OFF -DCMAKE_INSTALL_PREFIX=${LIBFMT_INSTALL_PREFIX})

# set(LIBFMT_CONFIGURE    "")
# set(LIBFMT_MAKE         cd ${LIBFMT_PREFIX}/src/libfmt-build && make)
# set(LIBFMT_INSTALL      cd ${LIBFMT_PREFIX}/src/libfmt-build && make install)

# set(LIBFMT_LIB          ${LIBFMT_INSTALL_PREFIX}/lib/libfmt.a)
# set(LIBFMT_INCLUDE      ${LIBFMT_INSTALL_PREFIX}/include)

ExternalProject_Add(libfmt 
    URL                     ${LIBFMT_URL}
    PREFIX                  ${LIBFMT_PREFIX}
#    CONFIGURE_COMMAND       ${LIBFMT_CONFIGURE}
#    BUILD_COMMAND           ${LIBFMT_MAKE}
#    INSTALL_COMMAND         ${LIBFMT_INSTALL}
    CMAKE_ARGS               ${LIBFMT_CMAKE_ARGS}
)

