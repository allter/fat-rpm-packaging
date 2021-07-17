#!/usr/bin/env bash

set -e

( cd app && docker build -t app-rpm-builder -f ./Dockerfile.app-rpm . )

docker run -v `pwd`/app:/app app-rpm-builder bash -c "cd /app && /opt/fpm/bin/fpm -s dir -t rpm -v 0 -n app /opt/app"
