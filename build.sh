#!/bin/bash
docker build --network=host -t lovato/bob $(dirname $0)/.
