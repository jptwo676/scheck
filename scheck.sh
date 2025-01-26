#!/bin/bash
#
#Author: jptwo676
#Date: 02/26/2025

command_ex_raw=$"command example: ./scheck sha1 sha2"
command_ex_file=$"command example: ./scheck file1 file2"

# normal route -r
function raw_input()
{
  sha1=$1
  sha2=$2
  echo "$sha1"
  echo "$sha2"

  [ "$sha1" == "$sha2" ] && echo "Same." || echo "Not the same."
}

# file route -f
function file_input()
{
  file1=$(sha256sum $1 | cut -d ' ' -f1)
  file2=$(sha256sum $2 | cut -d ' ' -f1)
  echo "$file1"
  echo "$file2"

  [ "$file1" == "$file2" ] && echo "Same." || echo "Not the same."
}

# help
# TODO completar
function help(){
  echo "-f) file mode
  Uses files containing the sha256 signatures for comparisson.
  $command_ex_file"

}

while getopts 'frh' OPTION; do
  case "$OPTION" in
    f)
      file_input
      ;;
    r)
      raw_input
      ;;
    h)
      help
      ;;
  esac
done
  


if [ $# -eq 0 ] 
then
  echo "No arguments provided.
  $command_ex
  -h for help"
  exit 1
fi

  

