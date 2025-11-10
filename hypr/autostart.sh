#!/usr/bin/env bash
set -euo pipefail

terminal=${TERMINAL:-kitty}

launch() {
    hyprctl dispatch exec "$1"
}

hyprctl dispatch workspace 1

launch "[workspace 2 silent] firefox"
launch "[workspace 3 silent] $terminal -e nvim"
launch "[workspace 4 silent] md.obsidian.Obsidian"
launch "[workspace 5 silent] Telegram"
launch "[workspace 1] $terminal"

sleep 1
hyprctl dispatch workspace 1
