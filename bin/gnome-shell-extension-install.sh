#!/bin/bash

# Use if "apt install <>" is not available
# apt search gnome-shell-extension

EXTENSION_FOLDER=~/.local/share/gnome-shell/extensions/
PROGNAME="$(basename "$0")"

usage() {
	echo "Usage:"
	echo "$PROGNAME <directory-name>"
    echo "<directory-name> must exist under ${EXTENSION_FOLDER}"
	echo "-----"
}


if [ $# -ne 1 ]; then
	usage
	echo "Pass extension folder name as single parameter."
    echo "This folder must exist under ${EXTENSION_FOLDER}"
	exit 1
fi

if [ ! -d  ${EXTENSION_FOLDER}"$1" ]; then
	usage
	echo "$1 folder does not exist under ${EXTENSION_FOLDER}"
	exit 1
fi

if [ ! -f ${EXTENSION_FOLDER}"$1"/metadata.json ]; then
	echo "metadata.json file does not exist under ${EXTENSION_FOLDER}$1"
    echo "If it exists in subfolders, move it to main folder level along with other files"
	exit 1
fi

extension_name=$( jq -r '.uuid' ${EXTENSION_FOLDER}"$1"/metadata.json )

if [[ $extension_name == "" ]]; then
	echo "uuid field is missing in ${EXTENSION_FOLDER}$1/metadata.json"
	exit 1
fi


echo "Renaming $1 to ${extension_name}"

mv ${EXTENSION_FOLDER}"$1" ${EXTENSION_FOLDER}"$extension_name"

gnome-extensions enable "$extension_name"

echo "extension installed/enabled. Now restart gnome shell"

echo 'Alt+F2: `r`'
