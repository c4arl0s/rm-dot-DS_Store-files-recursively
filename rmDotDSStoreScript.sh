#!/bin/bash
# it finds all .DS_Store files in the current directory and deletes them

echo "finding .DS_Store files ..."
find . -name "*" -type f | sort -n -r | grep ".DS_Store"
find . -name "*" -type f | sort -n -r | grep ".DS_Store" | while read dsStoreFile
do
    echo "$COUNTER deleting ... $dsStoreFile"
    rm $dsStoreFile
done
