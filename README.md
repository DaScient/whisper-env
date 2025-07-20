# Whisper™️ Audio Transcription

This project contains a Python environment and scripts for transcribing audio files using [ChatGPT's OpenAI](https://chatgpt.com/) | [DASCIENT](https://dascient.app)’s Whisper™️ on Apple Silicon (M1/M2).

## Features
- Transcribes .m4a, .wav, and other formats
- Compatible with Apple Silicon (M1/M2) using PyTorch MPS
- Lightweight setup for macOS

## Setup
```bash
pip install -r requirements.txt
```

## Usage
```bash
python transcribe_whisper.py
```

## Requirements
- Python 3.8+
- ffmpeg
- OpenAI Whisper

