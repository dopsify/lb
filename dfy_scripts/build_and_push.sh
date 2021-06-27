#!/bin/bash -ex

##########################
app_name="dfy_tpl_lb"
###########################

version="0.0.1"
image_registry="quay.io/sohan_karun/dopsify"
tag="${version}-${BUILD_NUMBER}"
docker_image="${image_registry}_${app_name}:${tag}"

echo "${docker_image}"
docker build -t "${docker_image}" -f ./Dockerfile .