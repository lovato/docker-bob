#!/bin/bash
docker build $1 --network=host -t lovato/bob-android-ndk $(dirname $0)/.
