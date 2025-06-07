#!/bin/bash

front_app=(
  padding_left=10
  background.color=$BLUE 
  icon.font="sketchybar-app-font:Regular:13.0" 
  script="$PLUGIN_DIR/front_app.sh" 
)

sketchybar --add item front_app left \
           --set front_app "${front_app[@]}"                 \
           --subscribe front_app front_app_switched
