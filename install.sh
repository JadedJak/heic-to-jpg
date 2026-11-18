#!/bin/bash
# Install for the current user: script to ~/.local/bin, Dolphin service menu.
set -e
cd "$(dirname "$0")"
install -Dm755 heic-to-jpg ~/.local/bin/heic-to-jpg
mkdir -p ~/.local/share/kio/servicemenus
sed "s|^Exec=heic-to-jpg|Exec=$HOME/.local/bin/heic-to-jpg|" heic-to-jpg.desktop > ~/.local/share/kio/servicemenus/heic-to-jpg.desktop
chmod +x ~/.local/share/kio/servicemenus/heic-to-jpg.desktop
echo "Installed. Right-click a HEIC/HEIF/WebP file in Dolphin -> Convert to JPG."
