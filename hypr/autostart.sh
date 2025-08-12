#!/bin/bash

terminal=alacritty

hyprctl dispatch workspace 1

hyprctl dispatch exec "[workspace 2 silent] firefox"
hyprctl dispatch exec "[workspace 3 silent] nvim"
hyprctl dispatch exec "[workspace 4 silent] md.obsidian.Obsidian"
hyprctl dispatch exec "[workspace 5 silent] Telegram"
hyprctl dispatch exec "[workspace 1] $terminal"

sleep 2

hyprctl dispatch workspace 1
