#!/bin/bash
cd $(dirname $0)
if [[ $# -eq 0 ]] ; then
  docker run -it --net=host -v ~/:/userhost:ro lovato/bob-java
else
  docker run --net=host lovato/bob-java /bin/sh -c "$1"
fi
