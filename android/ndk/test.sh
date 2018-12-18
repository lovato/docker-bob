#!/bin/bash
cd $(dirname $0)
../test.sh
echo Testing BOB-ANDROID-NDK
echo
./run.sh "sdkmanager --list"
echo