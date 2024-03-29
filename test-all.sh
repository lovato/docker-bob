#!/bin/bash
set -e
# set -x
echo
echo Testing BOB
echo ================================
echo
docker run --net=host lovato/bob /bin/bash -c "lsb_release -a && pip --version && echo -n 'npm ' && npm --version"
echo
echo Testing BOB-CPP additions to BOB
echo ================================
echo
docker run --net=host lovato/bob-cpp /bin/bash -c "gcc --version && cmake --version"
./python/test.sh
echo
echo Testing BOB-NODEJS additions to BOB
gitecho ================================
echo
./nodejs/run.sh "echo -n 'nodejs ' && node --version"
echo
echo Testing BOB-JAVA additions to BOB
echo ================================
echo
./java/run.sh "java -version && mvn -v && ant -version"
echo
echo Testing BOB-ANDROID additions to BOB-JAVA
echo ================================
echo
./android/run.sh "gradle -v && sdkmanager --list"
echo
echo Testing BOB-ANDROID-NDK additions to BOB-ANDROID
echo ================================
echo
./android/ndk/run.sh "sdkmanager --list"
echo
echo Testing BOB-SERVERLESS
echo ================================
echo
./serverless/run.sh "serverless --list"
echo