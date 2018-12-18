#!/bin/bash
docker build --network=host -t lovato/bob-python $(dirname $0)/.
