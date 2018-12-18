#!/bin/bash
set -e
export PROJECT_ROOT=$(git rev-parse --show-toplevel)
$PROJECT_ROOT/test.sh
echo Testing BOB-JAVA
echo ================================
echo
$PROJECT_ROOT/java/run.sh "java -version && mvn -v && ant -version"
echo