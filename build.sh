#!/bin/bash

# Check input
if [ "$#" -ne 1 ]; then
    echo "Usage: ./build.sh <image_name>"
    exit -1
fi

IMG_NAME="$1"
IMG_PATH=$(dirname $(readlink -f "$0"))/"$IMG_NAME"

if ! [ -d "$IMG_PATH" ]; then
    echo "Could not find image $IMG_PATH. Exiting..."
    exit -1
else
    echo "Building image $1..."
fi

docker build --tag carlosgalvezp/"$IMG_NAME" "$IMG_PATH"
