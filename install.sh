#!/usr/bin/env bash

set -euo pipefail

readonly SOURCE_SCRIPT="remove-dot-ds-store-files.sh"
readonly INSTALL_DIR="/usr/local/bin"
readonly TARGET_COMMAND="remove-dot-ds-store-files"
readonly TARGET_PATH="${INSTALL_DIR}/${TARGET_COMMAND}"

if [[ ! -f "${SOURCE_SCRIPT}" ]]; then
  echo "Error: ${SOURCE_SCRIPT} was not found in the current directory." >&2
  exit 1
fi

chmod +x "${SOURCE_SCRIPT}"

if [[ ! -d "${INSTALL_DIR}" ]]; then
  echo "Creating ${INSTALL_DIR}..."
  sudo mkdir -p "${INSTALL_DIR}"
fi

echo "Installing ${TARGET_COMMAND} to ${TARGET_PATH}..."
sudo cp "${SOURCE_SCRIPT}" "${TARGET_PATH}"
sudo chmod +x "${TARGET_PATH}"

echo "Installation complete."
echo "Run '${TARGET_COMMAND}' from any directory to remove .DS_Store files recursively."
