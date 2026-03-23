# Remove `.DS_Store` Files Recursively

This project provides a shell script that finds and removes `.DS_Store` files recursively from the current directory.

## Install

From the project root, run:

```console
./install.sh
```

The installer copies `remove-dot-ds-store-files.sh` to `/usr/local/bin/rm-dot-ds-store-files`, so you can run it globally.

## Usage

Navigate to the directory you want to clean, then run:

```console
rm-dot-ds-store-files
```

If you prefer not to install globally, run the script directly from the repository:

```console
./remove-dot-ds-store-files.sh
```

## Notes

- You may be asked for your password during installation because `sudo` is used to write to `/usr/local/bin`.
- The command exits with an error if no `.DS_Store` files are found.
