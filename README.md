# Remove .DS_Store File Recursively Script

It removes the annoying .DS_Store files in the current directory.

# How to use it ?

You just placed in the directory you need to remove those files, then execute the script:

```console
$ ./rmDotDSStoreScript.sh
```

# Code

```bash
#!/bin/bash
# it finds all .DS_Store files in the current directory and deletes them

echo "finding .DS_Store files ..."
COUNTER=0
storeFiles=$(find . -name "*" -type f | sort -n -r | grep ".DS_Store" | tee /dev/tty)
echo $storeFiles | sort -n -r | grep ".DS_Store" | while read dsStoreFile
do
    let COUNTER=$COUNTER+1
    echo "$COUNTER deleting ... $dsStoreFile"
    rm $dsStoreFile
done
```
