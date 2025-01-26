#!/bin/bash

if [ $# -eq 0 ] 
then
  echo "No arguments provided.
  command example: ./scheck sha1 sha2"
  exit 1
fi
  

sha1=$(sha256sum $1 | cut -d ' ' -f1)
sha2=$(sha256sum $2 | cut -d ' ' -f1)
echo "$sha1"
echo "$sha2"

[ "$sha1" == "$sha2" ] && echo "Iguais." || echo "Diferentes."

