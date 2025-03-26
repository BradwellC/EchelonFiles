#!/bin/bash

front_app=(
  background.color=$ACCENT_COLOR
  icon.color=$BAR_COLOR
  icon.font="sketchybar-app-font:Regular:14.0"
  label.color=$BAR_COLOR
  script="$PLUGIN_DIR/front_app.sh"
  label.padding_right=7
  icon.padding_left=5
)

sketchybar --add item front_app left \
  --set front_app ${front_app[@]} \
  --subscribe front_app front_app_switched
