#!/bin/bash
set -e
export PROJECT_ROOT=$(git rev-parse --show-toplevel)
$PROJECT_ROOT/test.sh
echo Testing BOB-CPP
echo ================================
echo
$PROJECT_ROOT/cpp/run.sh "gcc --version && cmake --version"
echo
