#!/usr/bin/env bash

NO_CACHE_STR=
#NO_CACHE_STR=--no-cache

set -e

cp -f perl/*.rpm app/

( cd app && docker build $NO_CACHE_STR -t app-builder -f ./Dockerfile.deps-rpm . )

docker run -v `pwd`/app:/app app-builder bash -c "cd /app && /opt/fpm/bin/fpm -s dir -t rpm -v 0 -n deps /opt/app-deps"
