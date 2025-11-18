Script 1

#!/bin/bash

SOURCE_DIR="MOVE_TARGET"
BACKUP_DIR="project_backups"
TIMESTAMP=$(date +%Y-%m-%d_%H%M%S)

mkdir -p "$BACKUP_DIR"
echo "Starting backup of '$SOURCE_DIR'..."

tar -czf "$BACKUP_DIR/backup_$TIMESTAMP.tar.gz" "$SOURCE_DIR"

if [ $? -eq 0 ]; then
    echo "-----------------------------------"
    echo "SUCCESS: Backup completed!"
    echo "Archive saved to: $BACKUP_DIR/backup_$TIMESTAMP.tar.gz"
    echo "-----------------------------------"
else
    echo "ERROR: Backup failed. Check if '$SOURCE_DIR' exists."
fi
