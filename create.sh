#!/bin/bash
cd "$(dirname "$0")" || exit
conan create . user/testing -s build_type=Debug
#conan create . user/testing -pr=./profiles/apple_clang
#conan create . user/testing -pr=./profiles/linux_gcc
