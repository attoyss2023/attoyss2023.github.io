#!/bin/bash

for i in *.pdf; do
    pngname=$(basename $i .pdf).png
    echo $i $pngname

    convert -density 600 $i -resize 800x $pngname
done
