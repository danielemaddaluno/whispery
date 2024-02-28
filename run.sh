# Loop through all files in the sources directory
for f in sources/*; do
    # Try to process the file with whisper
    whisper $f --model medium --output_dir outputs
done