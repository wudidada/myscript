#!/bin/sh

while read input_text
do
  case $input_text in
        hello)      echo English  ;;
        howdy)      echo American  ;;
        *)          echo Unknown Language: "$input_text";;
  esac
done  < myfile.txt