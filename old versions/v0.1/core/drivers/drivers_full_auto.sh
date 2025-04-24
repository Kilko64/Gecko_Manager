#!/bin/bash

# Get script directory
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Update the system and install general drivers
echo "Updating package lists..."
sudo apt update

echo "Installing general drivers..."
sudo apt install -y linux-headers-$(uname -r) build-essential dkms

# Example of auto-detecting GPU (can be expanded with more hardware checks)
echo "Detecting GPU drivers..."
if lspci | grep -i "VGA"; then
    if lspci | grep -i "NVIDIA"; then
        echo "Detected NVIDIA GPU, installing NVIDIA drivers..."
        sudo apt install -y nvidia-driver
    elif lspci | grep -i "AMD"; then
        echo "Detected AMD GPU, installing AMD drivers..."
        sudo apt install -y amdgpu-pro
    elif lspci | grep -i "Intel"; then
        echo "Detected Intel GPU, installing Intel drivers..."
        sudo apt install -y xserver-xorg-video-intel
    fi
fi

# Audio drivers
echo "Detecting audio drivers..."
if lspci | grep -i "audio"; then
    echo "Detected audio device, installing ALSA and PulseAudio..."
    sudo apt install -y alsa-utils pulseaudio
fi

# WiFi drivers
echo "Detecting WiFi drivers..."
if lsusb | grep -i "WiFi"; then
    echo "Detected WiFi device, installing WiFi drivers..."
    sudo apt install -y firmware-iwlwifi
fi

# Finish
echo "Driver installation complete."
