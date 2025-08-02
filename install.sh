#!/bin/bash

echo "=== Installing Claude Desktop ==="

# Clone Claude Desktop repository
echo "Cloning Claude Desktop repository..."
git clone https://github.com/aaddrick/claude-desktop-debian.git
cd claude-desktop-debian

# Build the package (Defaults to .deb and cleans build files)
echo "Building Claude Desktop package..."
./build.sh

# Install the built package
echo "Installing Claude Desktop..."
sudo dpkg -i *.deb

# Fix any dependency issues
sudo apt-get install -f -y

# Go back to original directory
cd ..

echo "=== Claude Desktop installation complete ==="
echo ""

echo "=== Installing MCP Server ==="

# GitHub repo info
REPO="gbrigandi/mcp-server-wazuh"

# Get latest release JSON from GitHub API
API_URL="https://api.github.com/repos/$REPO/releases/latest"
ASSET_URL=$(curl -s $API_URL | grep "browser_download_url" | grep "linux-amd64" | cut -d '"' -f 4)

if [ -z "$ASSET_URL" ]; then
    echo "Error: Could not find the linux-amd64 release asset."
    exit 1
fi

# Define output binary name
FILENAME="mcp-server-wazuh"

# Download the latest release
echo "Downloading MCP Server from: $ASSET_URL"
curl -L "$ASSET_URL" -o "$FILENAME"

# Make it executable
chmod +x "$FILENAME"

echo "Download complete. AppImage saved as ./$FILENAME"
echo "=== MCP Server installation complete ==="
