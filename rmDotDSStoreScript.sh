#!/bin/bash
# it finds all .DS_Store files in the current directory and deletes them

DSSTOREFILE=".DS_Store"

storeFiles=$(find . -name "*" -type f | sort -n -r | grep $DSSTOREFILE | tee /dev/tty)

[ ! -z "$storeFiles" ] && { echo "$DSSTOREFILE files were found"; } || { echo "🔴 $DSSTOREFILE files were not found"; exit 1; }

echo $storeFiles | sort -n -r | grep ".DS_Store" | while read dsStoreFile; do
    rm $dsStoreFile && echo "Files were deleted" || { echo "🔴 Error while deleting files"; exit 1; }
done

exit 0
