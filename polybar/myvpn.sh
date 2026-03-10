#!/usr/bin/env bash

set -e

cur_if=$(sudo wg | grep -Po "^interface:\s+\K.*$" || exit 0)

if [ -z "$cur_if" ]; then
    echo "wg off"
    exit 0
fi

echo "$cur_if"
