#!/bin/bash
set -x
if [[ $# -eq 0 ]] ; then
  docker run -it --net=host -v ~/:/userhost:ro lovato/bob-python
else
  docker run --net=host lovato/bob-python /bin/bash -c "$1"
fi