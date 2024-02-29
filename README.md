# 

# Whispery: whisper made easy, audio/video to text

## Prerequisites:

*Docker Desktop* must be installed on your system.<br>
You can install *Docker Desktop* for your specific operating system from this [link](https://www.docker.com/products/docker-desktop/).

## Setup
1. Download the zip of this project clicking this [link](https://github.com/danielemaddaluno/whispery/archive/refs/heads/main.zip).
2. Unzip it somewhere.
3. Put your audios and/or videos under the `sources` folder.
4. So the directory structure should look like the following structure:
   ```
   .
   ├── sources
   │   ├── filename1.mp3
   │   └── filename2.mp4
   ├── docker-compose.yml
   ├── Dockerfile
   ├── LICENSE
   ├── README.md
   ├── run.sh
   ├── whispery.bat
   └── whispery.sh
   ```

## Run

### On Docker (Windows and MacOS)
Follow these steps:
1. Move with a command line terminal inside the directory containing the project unzipped (see `Setup` section above),
   for example like that:
    ```bash
    cd <path-to-unzipped-project-folder>
    ```
2. Then run the following command:
    ```bash
    docker-compose up
    ```
   
### On Windows
Inside a Windows system you should be able to run it simply double clicking
on the `whispery.bat` file.<br>
Otherwise you can run the whispery bat from the `Command Prompt`:
```bash
whispery.bat
```

### On MacOS
Inside a MacOS you can run the following command from the `Terminal`:
```bash
./whispery.sh
```



## Output
All the outputs will be created inside of the `outputs` folder.<br>
For each of the files passed as inputs, whisper will create 5 output files.<br>
Let's imagine that we have added a single file called `filename1.mp4` into the `inputs` folder.<br>
Here are the different files that will be generated inside of the `output` folder:

1. *JSON (filename1.json)*:

   JSON stands for JavaScript Object Notation.
   It's a lightweight data-interchange format that is easy for humans to read and write and easy for machines to parse and generate.
   It is commonly used for transmitting data between a server and a web application as an alternative to XML.

2. *SubRip Subtitle (filename1.srt)*:

   SRT is a subtitle file format.
   It contains formatted lines of plain text in a sequential format, with timing information denoting when each subtitle should appear and disappear during playback of a video.

3. *Tab-Separated Values (filename1.tsv)*:

   TSV is a file format for storing data in a tabular structure.
   It uses tabs to separate fields within each row.
   TSV files are often used for representing structured data that can be imported into spreadsheet software like Microsoft Excel or Google Sheets.

4. *Plain Text (filename1.txt)*:

   TXT files contain plain, unformatted text.
   They can be created and edited with any text editor.
   TXT files are versatile and commonly used for storing and exchanging text-based information.

5. *WebVTT (filename1.vtt)*:

   WebVTT (Web Video Text Tracks) is a subtitle and caption file format.
   It is used for displaying text tracks (such as subtitles or captions) in HTML5 video players.
   WebVTT files can contain timing information similar to SRT files but also support styling and formatting options for the displayed text.
   Each of these file formats serves different purposes and may be used in various contexts depending on the requirements of the application or system they are intended for.e script creates a set of modified videos where random audio clips are added to the original videos, starting from specific seconds and microseconds as specified in the audio file names. The output files are organized in the output directory, within timestamped subdirectories, making it easier to track and manage the processed videos.
