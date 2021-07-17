#!/usr/bin/env bash

set -e

( cd perl && docker build -t custom_perl-builder -f ./Dockerfile.perl-rpm . )

docker run -v `pwd`/perl:/perl custom_perl-builder bash -c "cd /perl && /opt/fpm/bin/fpm -s dir -t rpm -v 0 -n custom_perl /opt/custom_perl"
