#!/bin/bash
cd $(dirname $0)
../test.sh
echo Testing BOB-NODEJS
echo
./run.sh "echo -n 'nodejs ' && node --version"
echo