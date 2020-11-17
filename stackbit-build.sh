#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# build site
npm run build

./inject-stackbit-widget.js out https://localhost:8092/init.js 5fb3cdfdf2d7f65d85b5d2f2

echo "stackbit-build.sh: finished build"
