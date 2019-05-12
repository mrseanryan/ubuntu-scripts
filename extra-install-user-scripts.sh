#!/usr/bin/env bash

./_ensure-home-bin.sh

echo Copying some useful scripts to ~/bin

cp useful-scripts/* ~/bin

echo export PATH="\$HOME/bin:\$PATH" >> $HOME/.bashrc

pushd git
./extra-install-git-prompt.sh &
popd

ls ~/bin
