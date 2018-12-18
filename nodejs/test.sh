#!/bin/bash
set -e
export PROJECT_ROOT=$(git rev-parse --show-toplevel)
$PROJECT_ROOT/test.sh
echo Testing BOB-NODEJS
echo ================================
echo
$PROJECT_ROOT/nodejs/run.sh "echo -n 'nodejs ' && node --version"
echo