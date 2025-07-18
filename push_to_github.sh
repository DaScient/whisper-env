#!/bin/bash

# Navigate to your whisper-env folder
cd ~/Desktop/whisper-env || exit

# GitHub repository URL
REPO_URL="https://github.com/DaScient/whisper-env"

# Create README.md if it doesn’t exist
if [ ! -f "README.md" ]; then
    echo "Creating README.md..."
    echo "# Whisper Audio Transcription

This project contains a Python environment and scripts for transcribing audio files using OpenAI Whisper on Apple Silicon (M1/M2).

## Features
- Transcribes .m4a, .wav, and other formats
- Compatible with Apple Silicon (M1/M2) using PyTorch MPS
- Lightweight setup for macOS

## Setup
\`\`\`bash
pip install -r requirements.txt
\`\`\`

## Usage
\`\`\`bash
python transcribe_whisper.py
\`\`\`

## Requirements
- Python 3.8+
- ffmpeg
- OpenAI Whisper
" > README.md
fi

# Create requirements.txt if it doesn’t exist
if [ ! -f "requirements.txt" ]; then
    echo "Creating requirements.txt..."
    echo "openai-whisper
torch
torchvision
torchaudio" > requirements.txt
fi

# Initialize git if not already initialized
if [ ! -d ".git" ]; then
    echo "Initializing git repository..."
    git init
    git branch -M main
    git remote add origin "$REPO_URL"
fi

# Add all files
echo "Adding files to git..."
git add .

# Commit changes
read -p "Enter commit message: " COMMIT_MSG
git commit -m "$COMMIT_MSG"

# Push to GitHub
echo "Pushing to GitHub..."
git push -u origin main

echo "✅ Successfully pushed to $REPO_URL"
