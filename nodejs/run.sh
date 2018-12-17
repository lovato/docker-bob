#!/bin/bash
docker run -it --net=host -v ~/:/userhost:ro lovato/bob-nodejs
