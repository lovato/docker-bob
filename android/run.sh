#!/bin/bash
cd $(dirname $0)
if [[ $# -eq 0 ]] ; then
  docker run -it --net=host -v ~/:/userhost:ro lovato/bob-android
else
  docker run --net=host lovato/bob-android /bin/sh -c "$1"
fi
