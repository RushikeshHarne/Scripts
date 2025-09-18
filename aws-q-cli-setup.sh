#!/bin/bash

# Script: install-amazon-q.sh
# Purpose: Install Amazon Q Desktop on Ubuntu/Debian and log in via CLI

set -e

echo "=== Installing Amazon Q Desktop ==="

# Step 1: Update packages
sudo apt-get update -y

# Step 2: Install required dependency
sudo apt-get install -y libfuse2 curl

# Step 3: Download Amazon Q .deb file
echo "Downloading Amazon Q..."
curl --proto '=https' --tlsv1.2 -sSf https://desktop-release.q.us-east-1.amazonaws.com/latest/amazon-q.deb -o amazon-q.deb

# Step 4: Install Amazon Q
echo "Installing Amazon Q..."
sudo apt install -y ./amazon-q.deb

# Step 5: Login to Amazon Q CLI
echo "Running 'q login' to authenticate with AWS CLI..."
q login

echo "✅ Amazon Q setup complete!"
