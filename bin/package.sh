#!/bin/bash
set -e

# Get latest commit hash
gitHash=$(git rev-parse --short HEAD)

# Create build directory if it doesn't exist
mkdir -p build

# Zip src/ into build/trmnl-smhi-{hash}.zip
cd src && zip -r "../build/trmnl-smhi-${gitHash}.zip" . && cd ..
