#!/bin/bash
set -e
cd $(dirname $0)
../test.sh
echo Testing BOB-NODEJS
echo ================================
echo
./run.sh "echo -n 'nodejs ' && node --version"
echo