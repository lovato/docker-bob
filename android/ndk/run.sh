#!/bin/bash
cd $(dirname $0)
if [[ $# -eq 0 ]] ; then
  docker run -it --net=host -v ~/:/userhost:ro lovato/bob-android-ndk
else
  docker run --net=host lovato/bob-android-ndk /bin/sh -c "$1"
fi
