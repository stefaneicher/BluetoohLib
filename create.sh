#!/bin/bash
cd "$(dirname "$0")" || exit
#conan remove "*" -f
#conan search "*"
#conan create . user/testing -pr=./profiles/apple_clang
conan create . user/testing -pr=./profiles/linux_gcc
#conan search "*"
