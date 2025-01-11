#!/bin/bash
TMP_FOLDER="$(pwd)/tmp"
HELPER_FOLDER="$(pwd)/helpers"
source "$HELPER_FOLDER/shell.prevent-start.sh"
################################################################
################################################################

echo "cleanup $TMP_FOLDER/**/**"
rm -rf "$TMP_FOLDER"/*

################################################################
################################################################
source "$HELPER_FOLDER/shell.prevent-stop.sh"
