#!/bin/bash

read -p "provide the url: " url

read -p "enter desired rate limit for downloading file(e.g. 15k): " rate

$folder=~/Downloads/

echo "downloading..."

wget --limit-rate $rate -P -q --show-progress $folder $url

echo "download is complete"
