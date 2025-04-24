#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_PATH="$SCRIPT_DIR/../config/system_config.conf"

echo "Choose your preferred package manager:"
options=("apt" "dnf" "pacman" "xbps" "None (manual setup)")

select opt in "${options[@]}"; do
    case $opt in
        "apt")
            echo "You selected apt"
            echo "pkg_mgr=apt" >> "$CONFIG_PATH"
            break
            ;;
        "dnf")
            echo "You selected dnf"
            echo "pkg_mgr=dnf" >> "$CONFIG_PATH"
            break
            ;;
        "pacman")
            echo "You selected pacman"
            echo "pkg_mgr=pacman" >> "$CONFIG_PATH"
            break
            ;;
        "xbps")
            echo "You selected xbps"
            echo "pkg_mgr=xbps" >> "$CONFIG_PATH"
            break
            ;;
        "None (manual setup)")
            echo "Skipping package manager selection"
            break
            ;;
        *)
            echo "Invalid option"
            ;;
    esac
done
