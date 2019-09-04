#!/usr/bin/env bash

if [ "$#" -ne 1 ]; then
    echo "USAGE: $0 <Partial file namet>"
        echo "EXAMPLE: ./$0 readme"
        exit 1
fi

find . -type f -iname "*$1*" -print

