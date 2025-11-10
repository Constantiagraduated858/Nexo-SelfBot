#!/bin/bash


set -e

echo "🔹 Updating system packages..."
sudo apt update -y && sudo apt upgrade -y

echo "🔹 Installing Python and pip..."
sudo apt install -y python3 python3-pip python3-venv

echo "🔹 Creating virtual environment..."
python3 -m venv botenv
source botenv/bin/activate

echo "🔹 Upgrading pip..."
pip install --upgrade pip

echo "🔹 Installing required Python packages..."
pip install telethon googletrans==4.0.0-rc1 pillow pytesseract requests qrcode

echo "🔹 Installing additional system dependencies..."
sudo apt install -y tesseract-ocr

echo "🔹 Installing optional developer tools..."
sudo apt install -y git curl

echo "✅ All dependencies installed successfully!"
echo "💡 To activate environment later, run:"
echo "   source botenv/bin/activate"
