#!/bin/bash
docker build $1 --network=host -t lovato/bob-python:latest $(dirname $0)/.
