#!/bin/bash
set -e

# Running build
export COMMIT_ID=$(git log --pretty="%h" --no-merges -1)
export COMMIT_DATE="$(git log --date=format:'%Y-%m-%d %H:%M:%S' --pretty="%cd" --no-merges -1)"

# Print Environment Variables
printenv

# Remove any existing build directory
rm -rf ./out

# Grant execute permission for Maven Wrapper
chmod +x ./mvnw

# Compile the project using Maven
./mvnw clean package

# Create an output directory
mkdir -p out

# Copy the JAR file to the output directory
cp target/*.jar out/
