#!/usr/bin/env bash
cd "$(dirname "$0")" || exit

docker run -i \
-v "${HOME}"/.conan:/home/conan/.conan \
-v "$(pwd)":/buildFolder conanio/gcc63 \
bash \
-c "cd /buildFolder && ls -l && ./create.sh" \
--rm