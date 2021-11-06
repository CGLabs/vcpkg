#header-only library
vcpkg_from_github(
    OUT_SOURCE_PATH SOURCE_PATH
    REPO CGLabs/CGDK.buffer
    REF 806c0f27ccff5265e66c67bcbe0704a1428a408d
    SHA512 cbbe24361165d3fbacdda06cbff09429ea220b9fb95c8af0024ed915dd699780fd0ddfcd2e45de0efffdbd013d447a0a4e468ec986fe289439e1dfe91d3549e8
    HEAD_REF master
)

# Put the licence file where vcpkg expects it
file(COPY ${SOURCE_PATH}/LICENSE DESTINATION ${CURRENT_PACKAGES_DIR}/share/constexpr/LICENSE)
file(RENAME ${CURRENT_PACKAGES_DIR}/share/CGDK.buffer/LICENSE ${CURRENT_PACKAGES_DIR}/share/CGDK.buffer/copyright)

# Copy the constexpr header files
file(GLOB HEADER_FILES_1 ${SOURCE_PATH}/include/cgdk/*.*)
file(GLOB HEADER_FILES_2 ${SOURCE_PATH}/include/cgdk/*.*)
file(COPY ${HEADER_FILES_1} DESTINATION ${CURRENT_PACKAGES_DIR}/include)
file(COPY ${HEADER_FILES_2} DESTINATION ${CURRENT_PACKAGES_DIR}/include/cgdk)