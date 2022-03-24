#!/bin/sh
echo "Running entrypoint.sh"
cmake --version
mkdir build
cd build
cmake ..
make
