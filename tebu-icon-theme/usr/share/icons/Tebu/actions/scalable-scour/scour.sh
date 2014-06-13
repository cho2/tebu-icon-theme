#!/bin/bash
mkdir scour-output
SAVEIF=$IFS
IFS=$(echo -en "\n\b")

for file in $(ls *svg)
do
  name=${file%%.svg}
  python scour.py -i $name.svg -o scour-output/$name.svg

done
