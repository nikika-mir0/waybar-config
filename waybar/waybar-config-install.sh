#!/bin/bash
clear
if pacman -Qi "waybar" &>/dev/null; then
  echo "waybar has installed"
else
  sudo pacman -S waybar
fi

TARGET_DIR="$HOME/.config/waybar"

if [ -d "$TARGET_DIR"]; then
  rm -rf "$TARGET_DIR"
fi

mkdir -p "$TARGET_DIR"

if [ -f "config.jsonc" ]; then
  cp config.jsonc "$TARGET_DIR/config.jsonc"
  echo "config.jsonc installed successfully!"
fi

if [ -f "style.css" ]; then
  cp style.css "$TARGET_DIR/style.css"
  echo "style.css installed successfully!"
fi
echo "Configuration downloaded successfully!"
