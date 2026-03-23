#!/bin/bash
#
# it finds all .DS_Store files in the current directory and deletes them

readonly ds_store_file_name='.DS_Store'
success_msg="🟢 Files: ${ds_store_file_name} were deleted"
error_msg="${ds_store_file_name} files were not found"

#######################################
# A function to print out error messages 
# Globals:
#   
# Arguments:
#   None
#######################################
function error() {
  echo "[🔴 $(date +'%Y-%m-%dT%H:%M:%S%z')]: $*" >&2
}

store_files=$(find . -name "*" -type f \
  | sort -n -r \
  | grep ${ds_store_file_name} \
  | tee /dev/tty)

[ -n "${store_files}" ] \
  || { error ${error_msg}; exit 1; }

echo ${store_files} \
  | sort -n -r \
  | while read store_file; do
      rm ${store_file} 
      echo "${store_file} were deleted" 
    done
