#!/bin/bash
docker build --network=host -t lovato/bob-android $(dirname $0)/.
