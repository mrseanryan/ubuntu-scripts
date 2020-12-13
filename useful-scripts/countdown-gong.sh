#!/usr/bin/env bash

if [ "$#" -ne 1 ]; then
    echo "USAGE: $0 <timespan - like 10s or 5m10s or 1h10m >"
    echo "EXAMPLE: ./$0 10s"
    exit 1
fi

#export BEEP=/usr/share/sounds/ubuntu/stereo/phone-incoming-call.ogg
export BEEP=~/bin/chinese-gong-daniel_simon.ogg

countdown $1 && paplay $BEEP
