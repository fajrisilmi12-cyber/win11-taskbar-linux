#!/bin/bash
# Installer script for win11-taskbar on Arch Linux / Ubuntu / Debian
set -e

echo "[*] Installing win11-taskbar for Linux..."

# Install directories
BIN_DIR="/usr/local/bin"
SHARE_DIR="/usr/share/win11-taskbar"
CONFIG_DIR="/etc/win11-taskbar"

mkdir -p "$BIN_DIR" "$SHARE_DIR" "$CONFIG_DIR"

cp bin/win11-taskbar "$BIN_DIR/win11-taskbar"
chmod +x "$BIN_DIR/win11-taskbar"

cp share/index.html "$SHARE_DIR/index.html"
cp config/TaskbarLayout.xml "$CONFIG_DIR/TaskbarLayout.xml"

# Desktop autostart entry
mkdir -p /etc/xdg/autostart
cat << 'EOF' > /etc/xdg/autostart/win11-taskbar.desktop
[Desktop Entry]
Type=Application
Name=Windows 11 Taskbar
Exec=/usr/local/bin/win11-taskbar
Hidden=false
NoDisplay=false
X-GNOME-Autostart-enabled=true
EOF

echo "[+] Installation complete! Run 'win11-taskbar' to start."
