#!/usr/bin/env bash

set -e

(cd fpm-rpm && docker build -t fpm-packager -f ./Dockerfile . )

docker run -v `pwd`/fpm-rpm:/fpm-rpm fpm-packager bash -c "cd /fpm-rpm && make rpm"
