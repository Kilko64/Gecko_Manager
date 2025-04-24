#!/bin/bash

echo "Choose your init system:"
options=("systemd" "runit" "OpenRC" "s6" "None (manual setup)")

select opt in "${options[@]}"; do
    case $opt in
        "systemd")
           SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
           CONFIG_PATH="$SCRIPT_DIR/../config/system_config.conf"
           echo "init=systemd" >> "$CONFIG_PATH"
           break
            ;;
        "runit")
           SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
           CONFIG_PATH="$SCRIPT_DIR/../config/user_config.conf"
           echo "init=runit" >> "$CONFIG_PATH"
           break
            ;;
        "OpenRC")
         SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
         CONFIG_PATH="$SCRIPT_DIR/../config/user_config.conf"
         echo "init=openrc" >> "$CONFIG_PATH"
         break
            ;;
        "s6")
         SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
         CONFIG_PATH="$SCRIPT_DIR/../config/user_config.conf"
         echo "init=s6" >> "$CONFIG_PATH"
         break
            ;;
        "None (manual setup)")
            echo "Skipping init system selection"
            break
            ;;
        *)
            echo "Invalid option"
            ;;
    esac
done
