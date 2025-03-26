#!/bin/bash

battery=(
  background.color=$RED
  label.color=$BAR_COLOR
  icon.color=$BAR_COLOR
  label.padding_right=7
  icon.padding_left=5
  update_freq=120
  script="$PLUGIN_DIR/battery.sh"
)

sketchybar --add item battery right \
  --set battery "${battery[@]}" \
  --subscribe battery system_woke power_source_change
