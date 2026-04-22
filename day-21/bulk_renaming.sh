#!/bin/bash

read -p "primary directory: " folder

cd $folder

# Renaming PNG files
if ls *.png >/dev/null 2>&1; then
  echo "PNGs found! renaming png"
  rename 's/file/image_png/' *.png
  echo "All png images well renamed."
fi


# JPEG files
if ls *.jpeg >/dev/null 2>&1; then
  echo "JPEGs found! Moving to csv_folder"
  rename 's/file/image_jpeg/' *.jpeg
  echo "All png images well renamed."
fi


# CSV files
if ls *.pdf >/dev/null 2>&1; then
  echo "PDFs found! Renaming pdf files"
  rename 's/file/document/' *.pdf
  echo "All PDFs renamed."
fi


# CSV files
if ls *.csv >/dev/null 2>&1; then
  echo "CSVs found! Renaming all CSVs."
  rename 's/file/sheet/' *.csv
  echo "All CSV files renamed."
fi

ls 
echo "DONE!"
