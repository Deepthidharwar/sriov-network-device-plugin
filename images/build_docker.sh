#!/usr/bin/env bash
set -e

## Build docker image
# To pass proxy settings for docker invoke this script with proxy env variable
# e.g. ./build_docker.sh http_proxy=http://192.168.33.10:3128

case "$#" in
    0)
        docker build -t sriov-device-plugin -f ./Dockerfile  ../
    ;;
    1)
        docker build -t sriov-device-plugin -f ./Dockerfile  ../ --build-arg $1
    ;;
esac
