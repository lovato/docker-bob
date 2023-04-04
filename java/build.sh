#!/bin/bash
docker build $1 --network=host -t lovato/bob-java:latest $(dirname $0)/.
