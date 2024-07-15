#!/bin/bash

# run this script to generate stuff defined in .kibot.yaml file 
# ./kibot.sh

# Allows running on windows via git bash
export MSYS_NO_PATHCONV=1

time docker run --rm -it \
    --volume "$(pwd):/tmp/workdir" \
    --workdir "/tmp/workdir" \
    ghcr.io/inti-cmnb/kicad8_auto:dev_1.6.5-3793f8d_k8.0.1_d_sid \
    /bin/bash -c 'kibot -c .kibot.yaml'
