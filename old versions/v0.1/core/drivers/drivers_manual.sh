#!/bin/bash

# Get script directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Show options for manual driver selection
echo "Choose drivers to install manually:"

echo "1. Install GPU drivers"
echo "2. Install Audio drivers"
echo "3. Install WiFi drivers"
echo "4. Skip driver installation"

read -p "Enter your choice (1-4): " choice

case $choice in
    1)
        echo "Please choose your GPU type:"
        echo "1. NVIDIA"
        echo "2. AMD"
        echo "3. Intel"
        read -p "Enter your choice (1-3): " gpu_choice

        case $gpu_choice in
            1)
                echo "Installing NVIDIA drivers..."
                sudo apt install -y nvidia-driver
                ;;
            2)
                echo "Installing AMD drivers..."
                sudo apt install -y amdgpu-pro
                ;;
            3)
                echo "Installing Intel GPU drivers..."
                sudo apt install -y xserver-xorg-video-intel
                ;;
            *)
                echo "Invalid choice, skipping GPU driver installation."
                ;;
        esac
        ;;
    2)
        echo "Installing Audio drivers..."
        sudo apt install -y alsa-utils pulseaudio
        ;;
    3)
        echo "Installing WiFi drivers..."
        sudo apt install -y firmware-iwlwifi
        ;;
    4)
        echo "Skipping driver installation."
        ;;
    *)
        echo "Invalid choice."
        ;;
esac

# Finish
echo "Driver installation complete (manual)."
