#!/bin/bash
echo "=========================================================="
echo "Hey! This script requires confirmation before execution!"
read -p "Are you sure you want to continue? [y/n] " result_prompt
confirm_lower="${result_prompt,,}"
if [[ "$confirm_lower" != "y" && "$confirm_lower" != "yes" ]]; then
  echo "Cancelled script!"
  exit 1
fi
echo "=========================================================="
echo "Starting script..."
