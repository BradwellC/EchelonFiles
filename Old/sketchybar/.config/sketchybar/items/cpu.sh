#!/bin/bash

sketchybar --add item cpu right \
           --set cpu  update_freq=2 \
                      icon=􀧓  \
                      background.color=$YELLOW \
                      label.color=$BAR_COLOR \
                      icon.color=$BAR_COLOR\
                      label.padding_right=7 \
                      icon.padding_left=5 \
                      script="$PLUGIN_DIR/cpu.sh"
