#!/bin/bash
set -x
if [[ $# -eq 0 ]] ; then
  docker run -it --net=host -v ~/:/userhost:ro lovato/bob-cpp
else
  docker run --net=host lovato/bob-cpp /bin/bash -c "$1"
fi