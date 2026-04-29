#!/bin/bash

read -p "provide the url: " URL

DEST=~/Downloads

cd $DEST

curl -O $URL

cd ~
