# Remove .DS_Store File Recursively Script

```bash
#!/bin/bash
# it finds all .DS_Store files in the current directory and deletes them

echo "finding .DS_Store files ..."
counter=0
find . -name "*" -type f | sort -n -r | grep ".DS_Store"
find . -name "*" -type f | sort -n -r | grep ".DS_Store" | while read dsStoreFile
do
    let counter++
    echo "$counter deleting ... $dsStoreFile"
    rm $dsStoreFile
done
```