#!/usr/bin/env bash

if [ "$#" -ne 1 ]; then
    echo "USAGE: $0 <Yarn version like 1.15.2>"
        echo "EXAMPLE: ./$0 1.15.2"
        exit 1
fi

VERSION=$1

wget "https://github.com/yarnpkg/yarn/releases/download/v${VERSION}/yarn_${VERSION}_all.deb"
sudo dpkg -i "yarn_${VERSION}_all.deb"

yarn --version
