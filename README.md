# whisper-env

📝 push_to_github.sh

#!/bin/bash

# Navigate to your whisper-env folder
cd ~/Desktop/whisper-env || exit

# Prompt for your GitHub repo URL
read -p "Enter your GitHub repository URL (e.g., https://github.com/username/repo.git): " REPO_URL

# Create README.md if it doesn’t exist
if [ ! -f "README.md" ]; then
    echo "Creating README.md..."
    echo "# Whisper Audio Transcription

This project contains a Python environment and scripts for transcribing audio files using OpenAI Whisper.

## Features
- Transcribes .m4a, .wav, and other formats
- Compatible with Apple Silicon (M1/M2) using PyTorch MPS

## Setup
\`\`\`bash
pip install -r requirements.txt
\`\`\`

## Usage
\`\`\`bash
python transcribe_whisper.py
\`\`\`
" > README.md
fi

# Initialize git if not already initialized
if [ ! -d ".git" ]; then
    echo "Initializing git repository..."
    git init
fi

# Add all files
echo "Adding files to git..."
git add .

# Commit changes
read -p "Enter commit message: " COMMIT_MSG
git commit -m "$COMMIT_MSG"

# Add remote if not already set
if ! git remote | grep origin > /dev/null; then
    git remote add origin "$REPO_URL"
fi

# Push to GitHub
echo "Pushing to GitHub..."
git branch -M main
git push -u origin main

echo "✅ Successfully pushed to $REPO_URL"


⸻

🛠 Instructions
	1.	Save this script in ~/Desktop/whisper-env as push_to_github.sh.
	2.	Make it executable:

chmod +x ~/Desktop/whisper-env/push_to_github.sh


	3.	Run it:

~/Desktop/whisper-env/push_to_github.sh



⸻

# en fin
