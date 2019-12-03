cmake_minimum_required(VERSION 3.10)

project(bluetooth VERSION 1.0 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 14)

include_directories(src)

add_library(bluetooth src/periperie/bluetooth.cpp)
add_executable(bluetooth.exe src/main.cpp src/periperie/bluetooth.cpp)

option(BUILD_UTEST "Build Unit Test" ON)
option(USE_COVERAGE "DO BUILD COVERAGE" OFF)

if (BUILD_UTEST)
    include(${CMAKE_BINARY_DIR}/conanbuildinfo.cmake)
    conan_basic_setup(TARGETS)
    # Code Coverage Configuration
    add_library(test_bluetooth OBJECT src/periperie/bluetooth.cpp)
    add_executable(testBluetoothAdd test/bluetooth_test.cpp $<TARGET_OBJECTS:test_bluetooth> ${CONAN_LIBS})
    target_link_libraries(testBluetoothAdd CONAN_PKG::doctest)

    if (USE_COVERAGE)
        target_compile_options(testBluetoothAdd
                PUBLIC
                "-O0"
                "-fprofile-arcs"
                "-ftest-coverage"
                )
        target_link_libraries(testBluetoothAdd gcov)
    endif (USE_COVERAGE)

    include(CTest)
    enable_testing()
    add_test(NAME testBluetoothAdd COMMAND testBluetoothAdd)
endif ()

