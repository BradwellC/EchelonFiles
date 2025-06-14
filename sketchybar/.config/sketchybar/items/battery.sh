#!/bin/bash

battery=(
  update_freq=120
  script="$PLUGIN_DIR/battery.sh"
  background.color=$PEACH
  padding_left=10
)

sketchybar --add item battery right \
           --set battery "${battery[@]}" \
           --subscribe battery system_woke power_source_change
