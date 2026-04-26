#!/bin/bash

#!/bin/bash

read -p "provide the url: " url

$folder=~/Downloads/

echo "downloading..."

wget -P -q --show-progress $folder $url

echo "download is complete"
