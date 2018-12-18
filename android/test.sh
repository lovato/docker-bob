#!/bin/bash
cd $(dirname $0)
../java/test.sh
echo Testing BOB-ANDROID
echo
./run.sh "gradle -v && sdkmanager --list"
echo