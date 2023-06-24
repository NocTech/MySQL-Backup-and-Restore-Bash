#!/bin/bash

# MySQL credentials
MYSQL_USER="your_username"
MYSQL_PASSWORD="your_password"
MYSQL_DATABASE="your_database_name"

# Backup destination directory
BACKUP_DIR="/path/to/backup/directory"

# Create backup directory if it doesn't exist
mkdir -p $BACKUP_DIR

# Backup file name format: backup_year-month-day_hour-minute-second.sql
BACKUP_FILE="$BACKUP_DIR/backup_$(date +%Y-%m-%d_%H-%M-%S).sql"

# Perform the backup using mysqldump
mysqldump --user=$MYSQL_USER --password=$MYSQL_PASSWORD $MYSQL_DATABASE > $BACKUP_FILE

# Print backup completion message
echo "Backup completed successfully. Backup file: $BACKUP_FILE"
