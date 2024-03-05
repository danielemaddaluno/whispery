# Loop through all files in the inputs directory
for f in inputs/*; do
    # Try to process the file with whisper
    whisper "$f" --model small --output_dir outputs
done
