#!/bin/bash
docker build $1 --network=host -t lovato/bob-cpp $(dirname $0)/.
