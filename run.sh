#!/bin/bash

set -o errexit

docker build --quiet --tag swift-dev-environment . > /dev/null
docker run --volume ~/swift:/swift --interactive --tty --rm swift-dev-environment
