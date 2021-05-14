#!/bin/bash
# it finds .DS_Store files, It deletes them if it is required.

echo "finding .DS_Store files ..."
numberFiles=0
find . -name "*" -type f | sort -n -r | grep ".DS_Store" | while read dsStoreFile
do
       rm $dsStoreFile
done