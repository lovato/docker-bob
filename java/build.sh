#!/bin/bash
docker build --network=host -t lovato/bob-java $(dirname $0)/.
