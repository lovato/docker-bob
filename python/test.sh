#!/bin/bash
set -e
cd $(dirname $0)
../test.sh
echo Testing BOB-PYTHON
echo ================================
echo
./run.sh "python2 --version && python3 --version && pipenv --version"
echo