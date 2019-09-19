#!/bin/bash

# ref: https://www.fosslinux.com/2986/free-up-hard-disk-space-ubuntu.htm
sudo apt-get -s clean
sudo apt-get autoremove --purge

# Removes old revisions of snaps
# CLOSE ALL SNAPS BEFORE RUNNING THIS
set -eu
snap list --all | awk '/disabled/{print $1, $3}' |
    while read snapname revision; do
        snap remove "$snapname" --revision="$revision"
    done

