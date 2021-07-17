#!/usr/bin/env bash

set -e

( cd perl && docker build -t custom_perl-base -f ./Dockerfile.perl-base . )

