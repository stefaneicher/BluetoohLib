#!/usr/bin/env bash
docker run -i --name BluetoohLib -v/Users/stefaneicher/.conan:/home/conan/.conan -v "$(pwd)":/buildFolder:ro conanio/gcc63 bash -c -c "cd /buildFolder && ls -l && ./create.sh" --rm
