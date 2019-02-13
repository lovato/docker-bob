#!/bin/bash
set -x
if [[ $# -eq 0 ]] ; then
  docker run -it --net=host -e AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY -v ~/:/userhost:ro lovato/bob-python
else
  docker run --net=host -e AWS_ACCESS_KEY_ID -e AWS_SECRET_ACCESS_KEY lovato/bob-python /bin/bash -c "$1"
fi