# Log Archiver

## Description

Log Archiver is a simple command-line tool that compresses and archives log files from a specified directory. This helps in managing log files efficiently by reducing storage space while keeping them accessible for future reference.

Features

- Accepts a log directory as an argument.

- Compresses log files into a .tar.gz archive.

- Stores the archived logs in a separate directory.

- Logs the date and time of the archive operation.

## Usage

To run the script, use the following command:
```
source log-archive.sh <log_directory>
```
Example:
```
source log-archive.sh /var/log/
```
This will create an archive file named with a timestamp, such as:
```
logs_archive_20240816_100648.tar.gz
```
## Dependencies

- Linux/Unix-based OS

- tar command-line utility

- bash
