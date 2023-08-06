include(ExternalProject)

set(CXXOPTS_URL                   ${ZIPS_DIR}/cxxopts-3.1.1.tar.gz)
set(CXXOPTS_CMAKE_ARGS            -DCMAKE_INSTALL_PREFIX=${LIBS_INSTALL_DIR} -DCMAKE_TOOLCHAIN_FILE=${CMAKE_TOOLCHAIN_FILE})

ExternalProject_Add(cxxopts 
    URL                     ${CXXOPTS_URL}
    CMAKE_ARGS               ${CXXOPTS_CMAKE_ARGS}
)
