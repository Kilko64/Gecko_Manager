#!/bin/bash

# Welcome message
echo "Welcome to Gecko Manager v0.1"
echo "Project made by kilko..."
echo "Enjoy this project (made with the sleep dept of kilko)"
echo "Starting system config..."
echo

# Get the absolute path to the script's directory (project root)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Function to display a message and wait for 1 second
function display_message {
    echo "$1"
    sleep 1
}

# Create the config files if they don't exist
mkdir -p "$(dirname "$SCRIPT_DIR/config/core_config.conf")"
mkdir -p "$(dirname "$SCRIPT_DIR/config/system_config.conf")"
mkdir -p "$(dirname "$SCRIPT_DIR/config/ui_config.conf")"
touch "$SCRIPT_DIR/config/core_config.conf"
touch "$SCRIPT_DIR/config/system_config.conf"
touch "$SCRIPT_DIR/config/ui_config.conf"

# Run driver selection
display_message "Step 1: Selecting drivers..."
bash "$SCRIPT_DIR/core/drivers/drivers_select.sh"
display_message "Driver selection saved in config:"
grep drivers= "$SCRIPT_DIR/config/core_config.conf"
echo

# Run network manager selection
display_message "Step 2: Selecting network manager..."
bash "$SCRIPT_DIR/core/network_select.sh"
display_message "Network manager saved in config:"
grep net_mgr= "$SCRIPT_DIR/config/core_config.conf"
echo

# Run audio manager selection
display_message "Step 3: Selecting audio manager..."
bash "$SCRIPT_DIR/core/audio_select.sh"
display_message "Audio manager saved in config:"
grep audio_mgr= "$SCRIPT_DIR/config/core_config.conf"
echo


# Run init system selection
display_message "Step 4: Selecting init system..."
bash "$SCRIPT_DIR/core/init_select.sh"
display_message "Init system saved in config:"
grep init= "$SCRIPT_DIR/config/system_config.conf"
echo

# Run package manager selection
display_message "Step 5: Selecting package manager..."
bash "$SCRIPT_DIR/core/package_manager_select.sh"
display_message "Package manager saved in config:"
grep pkg_mgr= "$SCRIPT_DIR/config/system_config.conf"
echo

display_message "Configuration complete! All selections saved."
