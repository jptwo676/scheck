#!/usr/bin/env bash
#
#Check if the contents of two arguments are the same
#Can be used to compare SHA-256 signatures
#Author: jptwo676
#Date: 02/26/2025


text1=$1
text2=$2

echo "text1 -> $text1"
echo "text2 -> $text2"

[ "$text1" == "$text2" ] && echo "Same." || echo "Not the same."


