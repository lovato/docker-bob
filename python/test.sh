#!/bin/bash
set -e
export PROJECT_ROOT=$(git rev-parse --show-toplevel)
$PROJECT_ROOT/test.sh
echo Testing BOB-PYTHON
echo ================================
echo
$PROJECT_ROOT/python/run.sh "python2 --version && python3 --version && pipenv --version"
echo