#!/bin/bash
set -e
set +x
echo
echo Testing BOB
echo ================================
echo
$1/run.sh "lsb_release -a && pip --version && echo -n 'npm ' && npm --version"
echo
echo Testing BOB-CPP
echo ================================
echo
$1/cpp/run.sh "gcc --version && cmake --version"
echo
echo Testing BOB-PYTHON
echo ================================
echo
$1/python/run.sh "python2 --version && python3 --version && pipenv --version"
echo
echo Testing BOB-NODEJS
echo ================================
echo
$1/nodejs/run.sh "echo -n 'nodejs ' && node --version"
echo
echo Testing BOB-JAVA
echo ================================
echo
$1/java/run.sh "java -version && mvn -v && ant -version"
echo
echo Testing BOB-ANDROID
echo ================================
echo
$1/android/run.sh "gradle -v && sdkmanager --list"
echo
echo Testing BOB-ANDROID-NDK
echo ================================
echo
$1/android/ndk/run.sh "sdkmanager --list"
echo