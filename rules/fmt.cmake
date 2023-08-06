
include(ExternalProject)

set(LIBFMT_URL                  ${ZIPS_DIR}/fmt-8.1.1.tar.gz)
set(LIBFMT_CMAKE_ARGS           -DFMT_TEST=OFF -DCMAKE_INSTALL_PREFIX=${LIBS_INSTALL_DIR} -DCMAKE_TOOLCHAIN_FILE=${CMAKE_TOOLCHAIN_FILE})

ExternalProject_Add(libfmt 
    URL                      ${LIBFMT_URL}
    CMAKE_ARGS               ${LIBFMT_CMAKE_ARGS}
)

