#!/bin/bash
mkdir export

SAVEIF=$IFS
IFS=$(echo -en "\n\b")

for file in $(ls *svg)
do
  name=${file%%.svg}
  inkscape $name.svg --export-png=$name.png --export-height=96 --export-width=96
  mv $name.png export/
done
