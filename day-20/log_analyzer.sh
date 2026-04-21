#!/bin/bash

echo "processing error/warning counts..."
grep -i -o -E '\b(fail|error|corrupt)\b' /var/log/syslog | sort | uniq -c | sort -nr
echo "done"
