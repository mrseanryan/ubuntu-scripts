# :scroll: ubuntu-scripts readme

A few simple scripts to setup a basic dev environment on Ubuntu.

## status - stable

Tested on Ubuntu 18.04

[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)
[![Donate](https://img.shields.io/badge/donate-paypal-blue.svg)](https://paypal.me/mrseanryan)

## features

Installs the following:

- docker and docker-compose
- ftp server to easily transfer files
- git and git lfs
- git aliases and credential caching
- graphviz
- network tools like: curl, ifconfig
- npm, yarn
- nvm, node 8 (latest)
- Visual Code

_note: probably NOT suitable for a production box!_

## usage

The 'clever' way:

```
sudo apt install curl

curl -o- https://raw.githubusercontent.com/mrseanryan/ubuntu-scripts/master/install.sh | bash
```

OR if that fails:

```
sudo apt-get update

sudo apt install git

git clone https://github.com/mrseanryan/ubuntu-scripts.git

cd ubuntu-scripts

./go.sh
```

## authors

Original work by Sean Ryan - mr.sean.ryan(at gmail.com)

## licence = MIT

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details

