#!/bin/bash

read -p "enter the directory where the log file is located: " input_dir

output_dir=$input_dir/"report.txt"

echo "Log Analysis Report" > $output_dir

[ -d "$input_dir" ] && echo "Directory exists" || mkdir $input_dir/processed_logs

for file in $input_dir/*.log; do
    echo "processing $file"
    ERRORS=$(grep -i "error" $file | wc -l)
    echo "$file: $ERRORS errors" >> $output_dir
    mv $file $input_dir/processed_logs/
done

echo "Done. Report saved to $output_dir"

