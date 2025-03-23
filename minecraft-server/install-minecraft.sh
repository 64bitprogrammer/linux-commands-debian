#!/bin/bash

# Define variables
MINECRAFT_DIR="minecraft_server"
MINECRAFT_VERSION="latest"
MINECRAFT_JAR="server.jar"
EULA_FILE="eula.txt"

# Update the system (optional, remove if unnecessary)
echo "Updating the system..."
sudo apt-get update -y && sudo apt-get upgrade -y

# Install dependencies (Java is required)
echo "Installing required packages (OpenJDK 17)..."
sudo apt-get install -y openjdk-17-jre-headless wget

# Create the Minecraft server directory
echo "Creating Minecraft server directory..."
mkdir -p $MINECRAFT_DIR
cd $MINECRAFT_DIR

# Download the Minecraft server JAR file
echo "Downloading Minecraft server JAR..."
wget https://piston-data.mojang.com/v1/objects/4707d00eb834b446575d89a61a11b5d548d8c001/server.jar -O $MINECRAFT_JAR

# Create EULA file (accept the license)
echo "Accepting Minecraft EULA..."
echo "eula=true" > $EULA_FILE

# Start the Minecraft server with 1GB as minimum ram allotment and 2.5gb as max allowed.
echo "Starting Minecraft server..."
java -Xmx2500M -Xms1024M -jar $MINECRAFT_JAR nogui

# to stop the minecraft server just run
stop

