#!/bin/bash
docker build $1 --network=host -t lovato/bob:latest $(dirname $0)/.
