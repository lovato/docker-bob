#!/bin/bash
set -x
if [[ $# -eq 0 ]] ; then
  docker run -it --net=host -v ~/:/userhost:ro lovato/bob-java
else
  docker run --net=host lovato/bob-java /bin/bash -c "$1"
fi