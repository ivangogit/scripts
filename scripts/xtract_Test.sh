#!/bin/bash

# Connect to remote server via SSH
ssh octoscope@10.25.100.47

# Navigate to the directory where the picture is located
cd /mnt/c/Users/ybobadilla/Pictures/

# Run Tesseract OCR on the picture to extract text
tesseract picture.jpg output -l eng

# Search for the word "Test" in the extracted text
grep "Test" output.txt
