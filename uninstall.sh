#!/bin/sh

# Simple Uninstall Script For Magisk Module
# by Zyarexx 

# Replace with your module's name
MODULE_NAME="elvina"

# Magisk module path
MAGISK_MODULE_PATH="/data/adb/modules"

# Check if the module is installed
if [ -d "${MAGISK_MODULE_PATH}/${MODULE_NAME}" ]; then
    # Remove the module directory
    rm -rf "${MAGISK_MODULE_PATH}/${MODULE_NAME}"
    echo "Module ${MODULE_NAME} has been uninstalled."
else
    echo "Module ${MODULE_NAME} is not installed."
fi