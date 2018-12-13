#!/bin/bash
docker run -it --net=host -v ~/:/userhost:ro local/bob
