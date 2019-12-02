#!/bin/bash
cd "$(dirname "$0")" || exit

./createWithDocker.sh
conan upload Calculator/0.1@user/testing --all -r=local_conan_artifactory