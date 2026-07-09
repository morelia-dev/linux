#!/bin/bash

# URL of the zipped font package (Example: JetBrains Mono)
FONT_URL="https://github.com/lvbibir/JetBrainsLxgwNerdMono/releases/download/v1.3/JetBrainsLxgwNerdMono.zip"
TARGET_DIR="/usr/local/share/fonts/JetBrainsMono"

# Setup temporary and target directories
mkdir -p "$TARGET_DIR"
TEMP_DIR=$(mktemp -d)

# Download and unpack
echo "Downloading font package..."
curl -L "$FONT_URL" -o "$TEMP_DIR/fonts.zip"

echo "Extracting files..."
unzip -o "$TEMP_DIR/fonts.zip" -d "$TEMP_DIR"

# Move the font files and clean up
find "$TEMP_DIR" -type f \( -name "*.ttf" -o -name "*.otf" \) -exec cp {} "$TARGET_DIR/" \;
rm -r "$TEMP_DIR"

# Update cache
echo "Updating font cache..."
fc-cache -f "$TARGET_DIR"

echo "Download and installation finished!"

