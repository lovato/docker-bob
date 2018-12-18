#!/bin/bash
set -e
set -x
pwd
env
echo
echo Testing BOB
echo ================================
echo
./run.sh "lsb_release -a && pip --version && echo -n 'npm ' && npm --version"
echo
echo Testing BOB-CPP
echo ================================
echo
./cpp/run.sh "gcc --version && cmake --version"
echo
echo Testing BOB-PYTHON
echo ================================
echo
./python/run.sh "python2 --version && python3 --version && pipenv --version"
echo
echo Testing BOB-NODEJS
echo ================================
echo
./nodejs/run.sh "echo -n 'nodejs ' && node --version"
echo
echo Testing BOB-JAVA
echo ================================
echo
./java/run.sh "java -version && mvn -v && ant -version"
echo
echo Testing BOB-ANDROID
echo ================================
echo
./android/run.sh "gradle -v && sdkmanager --list"
echo
echo Testing BOB-ANDROID-NDK
echo ================================
echo
./android/ndk/run.sh "sdkmanager --list"
echo