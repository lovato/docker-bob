#!/bin/bash
docker build --network=host -t lovato/bob-cpp $(dirname $0)/.
