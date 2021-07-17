#!/usr/bin/env bash

set -e

(cd ./app/ && docker build -t app-test -f ./Dockerfile.test . )

docker run -it -v `pwd`/app:/app -p 127.0.0.1:8080:8080/tcp app-test /opt/app/bin/app daemon -l http://*:8080
#docker run -it -v `pwd`/app:/app app-test bash
