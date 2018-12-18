#!/bin/bash
cd $(dirname $0)
../test.sh
echo Testing BOB-JAVA
echo
./run.sh "java -version && mvn -v && ant -version"
echo