#!/bin/bash
docker build $1 --network=host -t lovato/bob-java $(dirname $0)/.
