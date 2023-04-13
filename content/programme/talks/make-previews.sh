#!/bin/bash
# https://www.endpointdev.com/blog/2016/12/bash-loop-wildcards-nullglob-failglob/
shopt -s nullglob
for i in *.pdf; do
    pngname=$(basename $i .pdf).png
    echo $i $pngname

    convert -density 600 $i -resize 800x $pngname
done
