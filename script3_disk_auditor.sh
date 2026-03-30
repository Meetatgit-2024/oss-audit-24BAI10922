#!/bin/bash
# Script 3: Disk and Permission Auditor
# Description: Checks size and permissions of important directories

# List of directories to check
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "========================================"
echo " Directory Audit Report"
echo "========================================"

# -------- Loop Through Directories --------
for DIR in "${DIRS[@]}"; do
    # Check if directory exists
    if [ -d "$DIR" ]; then

        # Get permissions, owner, and group
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')

        # Get directory size
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

        echo "$DIR => Permissions: $PERMS | Size: $SIZE"

    else
        echo "$DIR does not exist"
    fi
done

# -------- Python Directory Check --------
PYTHON_PATH="/usr/bin/python3"   # Python executable path

echo ""
echo "Checking Python installation path..."

# Check if Python exists
if [ -f "$PYTHON_PATH" ]; then
    ls -l $PYTHON_PATH
else
    echo "Python executable not found"
fi
