#!/usr/bin/env bash

./_ensure-home-bin.sh

echo Create free2.sh script
PATH_TO_FREE=$HOME/bin/free2.sh
echo free -h > $PATH_TO_FREE
echo df -H >> $PATH_TO_FREE
chmod +x $PATH_TO_FREE

echo export PATH="\$HOME/bin:\$PATH" >> $HOME/.bashrc

pushd git
./extra-install-git-prompt.sh
popd
