#!/bin/bash
set -e
export PROJECT_ROOT=$(git rev-parse --show-toplevel)
echo Testing BOB
echo ================================
echo
$PROJECT_ROOT/run.sh "lsb_release -a && pip --version && echo -n 'npm ' && npm --version"
echo