#!/bin/bash
if [[ $# -eq 0 ]] ; then
  docker run -it --net=host -v ~/:/userhost:ro lovato/bob
else
  docker run --net=host lovato/bob /bin/bash -c "$1"
fi
