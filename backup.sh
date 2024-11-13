#!/bin/bash

# Task 1: Define the source directory to back up
SOURCE_DIR="/path/to/source"

# Task 2: Define the destination directory for backups
DEST_DIR="/path/to/destination"

# Task 3: Create a timestamp variable for unique backup names
TIMESTAMP=$(date +%Y-%m-%d_%H-%M-%S)

# Task 4: Set the backup file name with timestamp
BACKUP_FILE="backup-${TIMESTAMP}.tar.gz"

# Task 5: Print a message indicating the backup has started
echo "Starting backup of ${SOURCE_DIR}..."

# Task 6: Use the tar command to create a compressed backup file
tar -czf "${DEST_DIR}/${BACKUP_FILE}" "${SOURCE_DIR}"

# Task 7: Check if the backup was created successfully
if [ -f "${DEST_DIR}/${BACKUP_FILE}" ]; then
    echo "Backup completed successfully: ${DEST_DIR}/${BACKUP_FILE}"
else
    echo "Backup failed!"
    exit 1
fi

# Task 8: Output the size of the backup file
BACKUP_SIZE=$(du -h "${DEST_DIR}/${BACKUP_FILE}" | cut -f1)
echo "Backup size: ${BACKUP_SIZE}"

# Task 9: Display disk usage on the destination directory
echo "Disk usage in destination:"
df -h "${DEST_DIR}"

# Task 10: Check permissions for the destination directory
ls -ld "${DEST_DIR}"

# Task 11: Set permissions for the backup file
chmod 600 "${DEST_DIR}/${BACKUP_FILE}"
echo "Set permissions to 600 for ${BACKUP_FILE}"

# Task 12: Print a message indicating script completion
echo "Backup script completed successfully."

# Task 13: Exit the script with status 0 (successful)
exit 0
