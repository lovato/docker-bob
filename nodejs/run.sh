#!/bin/bash
if [[ $# -eq 0 ]] ; then
  docker run -it --net=host -v ~/:/userhost:ro lovato/bob-nodejs
else
  docker run --net=host lovato/bob-nodejs /bin/sh -c "$1"
fi
