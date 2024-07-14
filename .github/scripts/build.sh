#!/bin/bash
set -e

# Running build
export COMMIT_ID=$(git log --pretty="%h" --no-merges -1)
export COMMIT_DATE="$(git log --date=format:'%Y-%m-%d %H:%M:%S' --pretty="%cd" --no-merges -1)"

# Print Environment Variables
printenv

# Remove any existing build directory
rm -rf ./codeSource/out

# Grant execute permission for Maven Wrapper
chmod +x ./codeSource/mvnw

# Compile the project using Maven
./codeSource/mvnw clean package

# Create an output directory
mkdir -p ./codeSource/out

# List contents of target directory for debugging
ls -la ./codeSource/target

# Copy the JAR file to the output directory
cp ./codeSource/target/*.jar ./codeSource/out/

# List contents of output directory for debugging
ls -la ./codeSource/out
