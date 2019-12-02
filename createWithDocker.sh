#!/usr/bin/env bash
DIRECTORY=`dirname $0`
cd $DIRECTORY

docker run -i \
-v "${HOME}"/.conan:/home/conan/.conan \
-v "$(pwd)":/buildFolder conanio/gcc63 \
bash \
-c "cd /buildFolder && ls -l && ./create.sh" \
--rm