#!/bin/bash

# MySQL credentials
MYSQL_USER="your_username"
MYSQL_PASSWORD="your_password"
MYSQL_DATABASE="your_database_name"

# Backup file to restore
BACKUP_FILE="/path/to/backup/directory/backup_file.sql"

# Restore the backup using mysql command
mysql --user=$MYSQL_USER --password=$MYSQL_PASSWORD $MYSQL_DATABASE < $BACKUP_FILE

# Print restore completion message
echo "Restore completed successfully."
