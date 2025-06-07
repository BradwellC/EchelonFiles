#!/bin/bash

brew=(
  icon=􀐛
  label=?
  background.color=$YELLOW
  script="$PLUGIN_DIR/brew.sh"
  padding_left=10
)

sketchybar --add event brew_update \
           --add item brew right   \
           --set brew "${brew[@]}" \
           --subscribe brew brew_update
