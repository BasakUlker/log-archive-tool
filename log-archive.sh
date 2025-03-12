#!bin/bash
#Checking an input exist or not.
if [ -z "$1" ]; then
	echo "Where is input?"
	return 1
fi
#Catching the input.
LOG_DIR="$1"
#Check the directory is exist or not
if [ ! -d "$LOG_DIR" ]; then
	echo "Error: directory not found."
	return 1
fi
#Defining the path where the logs will be stored.
ARCHIVE_DIR="$HOME/log_archives"
#If the specified directory does not exist, it will be created.
mkdir -p "$ARCHIVE_DIR"
#Creating a filename with the date info.
TIMESTAMP=$(date +"%Y%m%d_%H%M%S")
#Compressing file with .tar.gz.
tar -czf "$ARCHIVE_DIR/logs_archives_$TIMESTAMP.tar.gz" "$LOG_DIR"
#Controlling whether the compression process was successful.
if [ $? -eq 0 ]; then
	echo "Logs compressed successfully to $ARCHIVE_DIR."
else
	echo "Error: logs couldn't be compressed."
	return 1
fi
