#!/usr/bin/env bash

{ # this ensures the entire script is downloaded #
sudo apt-get update

sudo apt install git

git clone https://github.com/mrseanryan/ubuntu-scripts.git

cd ubuntu-scripts

./go.sh
} # this ensures the entire script is downloaded #
