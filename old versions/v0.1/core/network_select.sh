#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_PATH="$SCRIPT_DIR/../config/core_config.conf"

echo "Choose your network manager:"
options=("NetworkManager" "wpa_supplicant" "iwd" "None (manual setup)")

select opt in "${options[@]}"; do
    case $opt in
        "NetworkManager")
            echo "You selected NetworkManager"
            echo "net_mgr=NetworkManager" >> "$CONFIG_PATH"
            break
            ;;
        "wpa_supplicant")
            echo "You selected wpa_supplicant"
            echo "net_mgr=wpa_supplicant" >> "$CONFIG_PATH"
            break
            ;;
        "iwd")
            echo "You selected iwd"
            echo "net_mgr=iwd" >> "$CONFIG_PATH"
            break
            ;;
        "None (manual setup)")
            echo "Skipping network manager selection"
            break
            ;;
        *)
            echo "Invalid option"
            ;;
    esac
done
