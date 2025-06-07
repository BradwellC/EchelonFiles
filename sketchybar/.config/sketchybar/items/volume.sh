#!/bin/bash

volume=(
  background.color=$MAROON
  script="$PLUGIN_DIR/volume.sh"
  padding_left=10
)

sketchybar --add item volume right \
           --set volume "${volume[@]}" \
           --subscribe volume volume_change \
