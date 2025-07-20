import whisper

# Load Whisper model (tiny, base, small, medium, large)
model = whisper.load_model("base")

# Path to your audio file
audio_path = "example.m4a"
output_text_file = "example_transcription.txt"

# Transcribe
print(f"Transcribing {audio_path} ...")
result = model.transcribe(audio_path)

# Save transcript
with open(output_text_file, "w") as f:
    f.write(result["text"])

print("✅ Transcription complete!")
print(f"Transcript saved to {output_text_file}")
