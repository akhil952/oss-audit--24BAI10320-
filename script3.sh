#!/bin/bash
# Script 3: Disk and Permission Auditor

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "=============================="
echo "    Directory Audit Report    "
echo "=============================="

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then
        # Extracting permissions and size
        PERMS=$(ls -ld "$DIR" | awk '{print $1, $3, $4}')
        SIZE=$(du -sh "$DIR" 2>/dev/null | cut -f1)
        echo "Directory: $DIR"
        echo " -> Permissions: $PERMS | Size: $SIZE"
        echo "------------------------------"
    else
        echo "[ERROR] $DIR does not exist on this system"
        echo "------------------------------"
    fi
done

# Check for Python's specific config/library directory
PYTHON_DIR="/usr/lib/python3"
echo ">> Checking Python Environment <<"
if [ -d "$PYTHON_DIR" ]; then
    PY_PERMS=$(ls -ld "$PYTHON_DIR" | awk '{print $1, $3, $4}')
    echo "Found $PYTHON_DIR"
    echo " -> Permissions: $PY_PERMS"
else
    echo "Python library directory ($PYTHON_DIR) not found."
fi