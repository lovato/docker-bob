#!/bin/bash
set -e
export PROJECT_ROOT=$(git rev-parse --show-toplevel)
$PROJECT_ROOT/java/test.sh
echo Testing BOB-ANDROID
echo ================================
echo
$PROJECT_ROOT/android/run.sh "gradle -v && sdkmanager --list"
echo