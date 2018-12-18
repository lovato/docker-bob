#!/bin/bash
set -e
cd $(dirname $0)
../java/test.sh
echo Testing BOB-ANDROID
echo ================================
echo
./run.sh "gradle -v && sdkmanager --list"
echo