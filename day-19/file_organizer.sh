#!/bin/bash

[ ! -d "csv_folder" ] && mkdir -p "csv_folder" && echo "csv_folder created successfully"
[ ! -d "pdf_folder" ] && mkdir -p "pdf_folder" && echo "pdf_folder created successfully"
[ ! -d "img_folder" ] && mkdir -p "img_folder" && echo "img_folder created successfully"

 

# CSV files
if ls *.csv >/dev/null 2>&1; then
  echo "CSVs found! Moving to csv_folder"
  mv *.csv /$csv_folder
  echo "All CSV files moved."
fi

# PDF files
if ls *.pdf >/dev/null 2>&1; then
  echo "PDFs found! Moving to pdf_folder"
  mv *.pdf /$pdf_folder
  echo "All PDF files moved."
fi

# Image files
if ls *.png *.jpeg >/dev/null 2>&1; then
  echo "Images found! Moving to img_folder"
  mv *.png *.jpeg /$img_folder
  echo "All image files moved."
fi
