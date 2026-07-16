#!/bin/bash

echo "Welcome to Cinit installation. Please enter your name for the copyright notice:"
read -r OWNER_NAME
echo "Thank you, $OWNER_NAME. Setting up Cinit..."

# Create config directory
mkdir -p ~/.config/cinit

# Write global config (owner + default profile only)
cat > ~/.config/cinit/cinit.conf << EOF
OWNER_NAME="$OWNER_NAME"
DEFAULT_PROFILE="c"
EOF

# Copy profiles (profile.conf + files) and shared license templates
cp -r .config/cinit/profiles ~/.config/cinit/
cp -r .config/cinit/templates ~/.config/cinit/

# Install cinit command
sudo cp cinit /usr/local/bin/cinit
sudo chmod +x /usr/local/bin/cinit

echo "Installation complete!"
echo "Run 'cinit' in any directory to create a new project."
