#!/bin/bash

###############################
# chmod +x setup-gemini-cli.sh
# ./setup-gemini-cli.sh
###############################
# Script: setup-gemini-cli.sh
# Purpose: Install Node.js 20+, Google Gemini CLI, and configure API key

set -e

echo "=== Setting up Google Gemini CLI ==="

# Step 1: Install Node.js 20.x and npm
echo "Installing Node.js 20+ ..."
curl -fsSL https://deb.nodesource.com/setup_20.x | sudo -E bash -
sudo apt-get install -y nodejs

# Verify versions
echo "Node.js version: $(node -v)"
echo "npm version: $(npm -v)"

# Step 2: Install Gemini CLI
echo "Installing @google/gemini-cli ..."
sudo npm install -g @google/gemini-cli

# Step 3: Ask user for API key
read -p "Enter your Google Gemini API Key: " USER_API_KEY

# Step 4: Save API key to .env file
echo "GEMINI_API_KEY=$USER_API_KEY" > .env
echo ".env file created with your API key."

# Step 5: Export API key for current session
export GEMINI_API_KEY="$USER_API_KEY"
echo "API key exported for current shell session."

# Final message
echo "✅ Google Gemini CLI setup complete!"
echo "You can now use the 'gemini' command in your terminal."
