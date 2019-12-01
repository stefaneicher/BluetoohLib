#!/usr/bin/env bash
docker run -i -v/tmp/.conan:/home/conan/.conan -v "$(pwd)":/buildFolder:ro conanio/gcc63 bash -c -c "cd /buildFolder && ls -l && ./create.sh"
