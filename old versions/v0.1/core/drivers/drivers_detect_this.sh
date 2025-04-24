#!/bin/bash

# Get script directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Detect hardware and install drivers

# Detect GPU
echo "Detecting GPU..."
if lspci | grep -i "VGA"; then
    GPU=$(lspci | grep -i "VGA" | awk '{print $0}')
    echo "GPU detected: $GPU"
    if echo "$GPU" | grep -i "NVIDIA"; then
        echo "Installing NVIDIA drivers..."
        sudo apt install -y nvidia-driver
    elif echo "$GPU" | grep -i "AMD"; then
        echo "Installing AMD drivers..."
        sudo apt install -y amdgpu-pro
    elif echo "$GPU" | grep -i "Intel"; then
        echo "Installing Intel GPU drivers..."
        sudo apt install -y xserver-xorg-video-intel
    fi
fi

# Detect audio device
echo "Detecting audio device..."
if lspci | grep -i "audio"; then
    echo "Audio device found, installing necessary drivers..."
    sudo apt install -y alsa-utils pulseaudio
fi

# Detect WiFi
echo "Detecting WiFi device..."
if lsusb | grep -i "WiFi"; then
    echo "WiFi device found, installing drivers..."
    sudo apt install -y firmware-iwlwifi
fi

# Finish
echo "Driver installation complete for this system."
