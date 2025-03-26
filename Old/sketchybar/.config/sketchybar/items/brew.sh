#!/bin/bash

# Trigger the brew_udpate event when brew update or upgrade is run from cmdline
# e.g. via function in .zshrc

sketchybar --add event brew_update \
  --add item brew right \
  --set brew  icon=􀐛   \
              label=?   \
              padding_right=10 \
              background.color=$WHITE \
              icon.color=$BAR_COLOR \
              label.color=$BAR_COLOR \
              script="$PLUGIN_DIR/brew.sh" \
  --subscribe brew brew_update \
