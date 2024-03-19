#!/bin/bash

# Update package list and install Python
sudo apt update
sudo apt install -y python3

# Display Python version to verify installation
python3 --version

echo "Python installation complete."
