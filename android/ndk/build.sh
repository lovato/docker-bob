#!/bin/bash
docker build --network=host -t lovato/bob-android-ndk $(dirname $0)/.
