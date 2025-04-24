#!/bin/bash

# Get the absolute path to the script's directory (project root)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Print the script directory to debug
#echo "DEBUG: SCRIPT_DIR=$SCRIPT_DIR"

# Correct path to the config file, relative to the script's location
CONFIG_PATH="$SCRIPT_DIR/../../config/core_config.conf"

# Print the calculated config path
#echo "DEBUG: CONFIG_PATH=$CONFIG_PATH"

# Check if the config file exists (absolute check)
#if [ ! -f "$CONFIG_PATH" ]; then
 #   echo "Error: Config file $CONFIG_PATH not found!"
  #  exit 1
#lse
    # echo "Config file found at $CONFIG_PATH"
    # No need to do anything here if config is found
    # You can leave this block empty or remove it entirely.
#fi

# Prompt the user to choose the driver installation method
echo "Choose your driver installation method:"
options=("All Drivers (Full Auto)" "This System Only (Detect)" "Manual Selection")

select opt in "${options[@]}"; do
    case $opt in
        "All Drivers (Full Auto)")
            echo "drivers=full_auto" >> "$CONFIG_PATH"
            bash "$SCRIPT_DIR/drivers_full_auto.sh"  # Correct path to full auto driver script
            break
            ;;
        "This System Only (Detect)")
            echo "drivers=detect_this" >> "$CONFIG_PATH"
            bash "$SCRIPT_DIR/drivers_detect_this.sh"  # Correct path to detect system driver script
            break
            ;;
        "Manual Selection")
            echo "drivers=manual" >> "$CONFIG_PATH"
            bash "$SCRIPT_DIR/drivers_manual.sh"  # Correct path to manual driver script
            break
            ;;
        *)
            echo "Invalid option"
            ;;
    esac
done
