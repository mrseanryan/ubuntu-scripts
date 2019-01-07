#!/usr/bin/env bash

{ # this ensures the entire script is downloaded #
sudo apt-get --yes --force-yes update

sudo apt --yes --force-yes install git

git clone https://github.com/mrseanryan/ubuntu-scripts.git

cd ubuntu-scripts

./go.sh
} # this ensures the entire script is downloaded #
