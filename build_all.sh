#!/usr/bin/env bash

set -e

./build_fpm-rpm.sh
./build_fpm-base.sh
./build_perl-rpm.sh
./build_perl-base.sh
./build_deps-rpm.sh
./build_app-rpm.sh

