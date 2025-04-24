#!/bin/bash
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
CONFIG_PATH="$SCRIPT_DIR/../config/core_config.conf"

echo "Choose your audio system:"
options=("PipeWire" "PulseAudio" "ALSA (basic)" "None (manual setup)")

select opt in "${options[@]}"; do
    case $opt in
        "PipeWire")
            echo "You selected PipeWire"
            echo "audio_mgr=pipewire" >> "$CONFIG_PATH"
            break
            ;;
        "PulseAudio")
            echo "You selected PulseAudio"
            echo "audio_mgr=pulseaudio" >> "$CONFIG_PATH"
            break
            ;;
        "ALSA (basic)")
            echo "You selected ALSA"
            echo "audio_mgr=alsa" >> "$CONFIG_PATH"
            break
            ;;
        "None (manual setup)")
            echo "Skipping audio manager selection"
            break
            ;;
        *)
            echo "Invalid option"
            ;;
    esac
done
