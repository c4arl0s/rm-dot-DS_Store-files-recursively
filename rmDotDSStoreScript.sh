#!/bin/bash
#
# it finds all .DS_Store files in the current directory and deletes them

ds_store_file=".DS_Store"

#######################################
# A function to print out error messages 
# Globals:
#   
# Arguments:
#   None
#######################################
function error() {
  echo "[$(date +'%Y-%m-%dT%H:%M:%S%z')]: $*" >&2
}

store_files=$(find . -name "*" -type f \
  | sort -n -r \
  | grep ${ds_store_file} \
  | tee /dev/tty)

[ ! -z "${store_files}" ] \
  && { echo "${ds_store_file} files were found"; } \
  || { error "🔴 ${ds_store_file} files were not found"; exit 1; }

echo ${store_files} \
  | sort -n -r \
  | grep ".DS_Store" \
  | while read ds_store_file; do
    rm ${ds_store_file} \
    && echo "Files were deleted" \
    || { error "🔴 Error while deleting files"; exit 1; }
  done

exit 0
