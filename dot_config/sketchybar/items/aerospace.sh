#!/usr/bin/env bash

sketchybar --add event aerospace_workspace_change

for sid in $(aerospace list-workspaces --all); do
  sketchybar --add item space."$sid" left \
    --subscribe space."$sid" aerospace_workspace_change \
    --set space."$sid" \
    background.color=0x44ffffff \
    background.corner_radius=5 \
    background.height=20 \
    background.width=20 \
    background.drawing=off \
    label.padding_left=3 \
    label.padding_right=3 \
    label.font.size=14.0 \
    label="$sid" \
    click_script="aerospace workspace $sid" \
    script="$HOME/.config/sketchybar/plugins/aerospace.sh $sid"
done
