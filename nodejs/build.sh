#!/bin/bash
docker build --network=host -t lovato/bob-nodejs $(dirname $0)/.
