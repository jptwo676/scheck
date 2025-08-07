#!/bin/bash
#
# Check if two signatures from sha256 (the only one I use) are the same
#Author: jptwo676
#Date: 02/26/2025

sha1=$1
sha2=$2

function compare_sha()
{
  echo "sha1 -> $sha1"
  echo "sha2 -> $sha2"

  [ "$sha1" == "$sha2" ] && echo "Same." || echo "Not the same."
}

compare_sha


