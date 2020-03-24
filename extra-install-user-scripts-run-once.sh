#!/usr/bin/env bash

./_extra-install-user-scripts./sh

echo export PATH="\$HOME/bin:\$PATH" >> $HOME/.bashrc

pushd git
./extra-install-git-prompt-run-once.sh &
popd

ls ~/bin
