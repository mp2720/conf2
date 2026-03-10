#!/bin/sh

set -e

CONFIG_DIRS='alacritty fish helix i3 polybar'

pp() {
  echo "$@"
  $@
}

for cfg_dir in $CONFIG_DIRS; do
  for cfg_file in $(find "$cfg_dir" -type f); do
    pp mkdir -p "$(dirname "$HOME/.config/$cfg_file")"
    pp ln -sf "$(realpath "$cfg_file")" "$HOME/.config/$cfg_file"
  done
done
