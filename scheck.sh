#!/bin/bash

file1=$(sha256sum $1 | cut -d ' ' -f1)
file2=$(sha256sum $2 | cut -d ' ' -f1)
echo "$file1"
echo "$file2"

[ "$file1" == "$file2" ] && echo "Iguais." || echo "Diferentes."

