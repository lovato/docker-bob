#!/bin/bash
set -e
export PROJECT_ROOT=$(git rev-parse --show-toplevel)
$PROJECT_ROOT/android/test.sh
echo Testing BOB-ANDROID-NDK
echo ================================
echo
$PROJECT_ROOT/android/ndk/run.sh "sdkmanager --list"
echo