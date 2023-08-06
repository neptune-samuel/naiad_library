
include(ExternalProject)

set(DOCOPT_URL                  ${ZIPS_DIR}/docopt.cpp-0.6.3.tar.gz)
set(DOCOPT_CMAKE_ARGS           -DCMAKE_INSTALL_PREFIX=${LIBS_INSTALL_DIR} -DCMAKE_TOOLCHAIN_FILE=${CMAKE_TOOLCHAIN_FILE})

ExternalProject_Add(docopt 
    URL                      ${DOCOPT_URL}
    CMAKE_ARGS               ${DOCOPT_CMAKE_ARGS}
)
