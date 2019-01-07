#!/usr/bin/env bash

{ # this ensures the entire script is downloaded #
sudo apt-get --yes --allow-downgrades update

sudo apt --yes --allow-downgrades install git

git clone https://github.com/mrseanryan/ubuntu-scripts.git

cd ubuntu-scripts

./go.sh --docker
} # this ensures the entire script is downloaded #
