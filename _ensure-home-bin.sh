#!/usr/bin/env bash

echo ensure ~/bin exists

PATH_TO_BIN=$HOME/bin
if [ ! -d $PATH_TO_BIN ]; then
  mkdir $PATH_TO_BIN
fi
