#!/usr/bin/env bash

./_ensure-home-bin.sh

echo Copying some useful scripts to ~/bin

cp useful-scripts/* ~/bin

ls ~/bin
