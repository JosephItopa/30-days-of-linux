#!/bin/bash

zip -r "backup_$(date +%Y-%m-%d_%H-%M).zip" ./store_folder

echo "folder successfully compressed with timestamp"

unzip '*.zip' -d b

echo "folder unzip"
