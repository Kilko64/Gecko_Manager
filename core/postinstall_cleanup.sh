cat <<EOF > "$CLEANUP_SCRIPT"
#!/bin/bash
echo "[INFO] Cleaning up temporary install packages..."

Tmpp=(${Tmpp[@]})
for pkg in "${Tmpp[@]}"; do
    echo "Removing $pkg..."
    apt purge -y "$pkg" || echo "[INFO] Could not purge $pkg (maybe not installed via apt)"
done

apt autoremove -y
rm -- "\$0"
EOF
