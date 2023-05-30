
include(ExternalProject)

set(DOCOPT_PREFIX               ${CMAKE_BINARY_DIR}/docopt)
set(DOCOPT_URL                  ${PROJECT_SOURCE_DIR}/zips/docopt.cpp-0.6.3.tar.gz)
set(DOCOPT_INSTALL_PREFIX       ${LOCAL_INSTALL_PREFIX})
set(DOCOPT_CMAKE_ARGS           -DCMAKE_INSTALL_PREFIX=${DOCOPT_INSTALL_PREFIX})
# set(DOCOPT_CONFIGURE          "")
# set(DOCOPT_MAKE               cd ${DOCOPT_PREFIX}/src/docopt-build && make)
# set(DOCOPT_INSTALL            cd ${DOCOPT_PREFIX}/src/docopt-build && make install)

# set(DOCOPT_LIB                  ${DOCOPT_INSTALL_PREFIX}/lib/libdocopt.a)
# set(DOCOPT_INCLUDE              ${DOCOPT_INSTALL_PREFIX}/include)

ExternalProject_Add(docopt 
    URL                      ${DOCOPT_URL}
    PREFIX                   ${DOCOPT_PREFIX}
#    CONFIGURE_COMMAND       ${DOCOPT_CONFIGURE}
#    BUILD_COMMAND           ${DOCOPT_MAKE}
#    INSTALL_COMMAND         ${DOCOPT_INSTALL}
    CMAKE_ARGS               ${DOCOPT_CMAKE_ARGS}
)
