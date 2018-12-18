#!/bin/bash
set -e
cd $(dirname $0)
../test.sh
echo Testing BOB-CPP
echo ================================
echo
./run.sh "gcc --version && cmake --version"
echo
