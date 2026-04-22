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
echo "DONE RENAMING FILES!"

echo "ORGANIZING FILES"
[ ! -d "csv_folder" ] && mkdir -p "csv_folder" && echo "csv_folder created successfully"
[ ! -d "pdf_folder" ] && mkdir -p "pdf_folder" && echo "pdf_folder created successfully"
[ ! -d "img_folder" ] && mkdir -p "img_folder" && echo "img_folder created successfully"

csv_folder="csv_folder"
pdf_folder="pdf_folder"
img_folder="img_folder"

# CSV files
if ls *.csv >/dev/null 2>&1; then
  echo "CSVs found! Moving to csv_folder"
  mv *.csv "$csv_folder"/
  echo "All CSV files moved."
fi

# PDF files
if ls *.pdf >/dev/null 2>&1; then
  echo "PDFs found! Moving to pdf_folder"
  mv *.pdf "$pdf_folder"/
  echo "All PDF files moved."
fi

# Image files
if ls *.png *.jpeg >/dev/null 2>&1; then
  echo "Images found! Moving to img_folder"
  mv *.png *.jpeg "$img_folder"/
  echo "All image files moved."
fi

echo "DONE!"
