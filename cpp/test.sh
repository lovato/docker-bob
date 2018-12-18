#!/bin/bash
cd $(dirname $0)
../test.sh
echo Testing BOB-CPP
echo
./run.sh "gcc --version | head -n 1 && cmake --version | head -n 1"
echo
