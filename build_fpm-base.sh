#!/usr/bin/env bash

set -e

cp -f fpm-rpm/fpm-*.rpm fpm-base/

(cd fpm-base && docker build -t fpm-base -f ./Dockerfile . )

