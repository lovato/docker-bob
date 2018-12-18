#!/bin/bash
set -e
set -x
./test.sh
./cpp/test.sh
./python/test.sh
./nodejs/test.sh
./java/test.sh
./android/test.sh
./android/ndk/test.sh

