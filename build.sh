#!/bin/bash
conan install . --install-folder cmake-build-debug -s build_type=Debug
conan build . --build-folder cmake-build-debug