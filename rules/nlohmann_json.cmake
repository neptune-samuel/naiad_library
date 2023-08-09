
include(ExternalProject)

set(LIBJSON_URL                  ${ZIPS_DIR}/json-3.11.2.zip)
set(LIBJSON_CMAKE_ARGS           -DCMAKE_INSTALL_PREFIX=${LIBS_INSTALL_DIR} -DCMAKE_TOOLCHAIN_FILE=${CMAKE_TOOLCHAIN_FILE})

ExternalProject_Add(nlohmann_json
    URL                      ${LIBJSON_URL}
    CMAKE_ARGS               ${LIBJSON_CMAKE_ARGS}
)

