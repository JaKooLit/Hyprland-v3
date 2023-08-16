#!/bin/bash

# WOFI STYLES
CONFIG="$HOME/.config/hypr/wofi/WofiBig/config"
STYLE="$HOME/.config/hypr/wofi/style.css"
COLORS="$HOME/.config/hypr/wofi/colors"

hyprDir="$HOME/.config/hypr/configs"

# wofi window config (in %)
WIDTH=10
HEIGHT=30

## Wofi Command
wofi_command="wofi --show dmenu \
			--prompt choose to view or edit...
			--conf $CONFIG --style $STYLE --color $COLORS \
			--width=$WIDTH% --height=$HEIGHT% \
			--cache-file=/dev/null \
			--hide-scroll --no-actions \
			--matching=fuzzy"


menu(){
  printf "1. view Env-variables\n"
  printf "2. view Rules\n"
  printf "3. view Execs\n"
  printf "4. view Key-Binds\n"
  printf "5. view Monitors\n"
}

main() {
    choice=$(menu | ${wofi_command} | cut -d. -f1)
    case $choice in
        1)
            foot -e nano "$hyprDir/ENVariables.conf"
            ;;
        2)
            foot -e nano "$hyprDir/WindowRules.conf"
            ;;
        3)
            foot -e nano "$hyprDir/Execs.conf"
            ;;
        4)
            foot -e nano "$hyprDir/Keybinds.conf"
            ;;
        5)
            foot -e nano "$hyprDir/Monitors.conf"
            ;;
        *)
            ;;
    esac
}

main