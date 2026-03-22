#!/bin/bash
# Script 3: Disk and Permission Auditor
# Author: Nihaar Gupta

echo "======================================"
echo " Disk and Permission Auditor"
echo " Author: Nihaar Gupta"
echo "======================================"

# List of directories
DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo ""
echo "Directory Audit Report"
echo "--------------------------------------"

for DIR in "${DIRS[@]}"
do
    if [ -d "$DIR" ]
    then
        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

        echo "$DIR"
        echo "Permissions: $PERMS"
        echo "Size       : $SIZE"
        echo "--------------------------------------"
    else
        echo "$DIR does not exist"
    fi
done

# -------- EXTRA: Git Config Directory --------
echo ""
echo "Checking Git Config Directory"
echo "--------------------------------------"

GIT_CONFIG="$HOME/.gitconfig"

if [ -f "$GIT_CONFIG" ]
then
    PERMS=$(ls -l $GIT_CONFIG | awk '{print $1, $3, $4}')
    echo "Git Config File Found ✅"
    echo "Permissions: $PERMS"
else
    echo "Git Config File NOT Found ❌"
fi

echo "======================================"