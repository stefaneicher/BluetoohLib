#!/bin/bash
cd "$(dirname "$0")" || exit

#./createWithDocker.sh
./create.sh
conan upload Calculator/1.0@user/testing --all -r=local_conan_artifactory