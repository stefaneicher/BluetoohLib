#!/usr/bin/env bash
docker run -i \
-v /Users/stefaneicher/.conan:/home/conan/.conan \
-v "$(pwd)":/buildFolder:ro conanio/gcc63 \
bash \
-c "cd /buildFolder && ls -l && ./create.sh" \
--rm
#--name BluetoohLib \

