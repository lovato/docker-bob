#!/bin/bash
set -e
cd $(dirname $0)
../test.sh
echo Testing BOB-ANDROID-NDK
echo ================================
echo
./run.sh "sdkmanager --list"
echo