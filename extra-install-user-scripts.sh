#!/usr/bin/env bash

PATH_TO_BIN=$HOME/bin
if [ ! -d $PATH_TO_BIN ]; then
  mkdir $PATH_TO_BIN
fi

PATH_TO_FREE=$HOME/bin/free2.sh
echo free -h > $PATH_TO_FREE
echo df -H >> $PATH_TO_FREE
chmod +x $PATH_TO_FREE

echo export PATH="\$HOME/bin:\$PATH" >> $HOME/.bashrc

