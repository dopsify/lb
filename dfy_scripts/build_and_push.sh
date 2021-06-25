#!/bin/bash -ex

##########################
app_name="dfy_tpl_lb"
###########################

version="0.0.1"
image_registry="quay.io/sohan_karun/dopsify"
tag="${version}-${BUILD_NUMBER}"
docker_image="${image_registry}_${app_name}:${tag}"


echo "Building the docker image"
docker build -t "${docker_image}" -f ./Dockerfile .
echo "$QUAY_BOT_PASSWORD" | docker login -u "$QUAY_BOT_USERNAME" --password-stdin quay.io
docker push ${docker_image}