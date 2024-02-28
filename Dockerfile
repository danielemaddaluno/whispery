# Use python:3.12-slim as our base image
# This image is based on Debian, and contains a minimal set of packages
FROM python:3.12-slim

# Set the working directory to /app
WORKDIR /app

# Install git using apt-get
RUN apt-get update && apt-get install git -y

# Install openai-whisper using pip
RUN pip3 install -U openai-whisper

# Install ffmpeg using apt-get
RUN apt-get install -y ffmpeg