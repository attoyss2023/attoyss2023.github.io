#!/bin/bash
# https://www.endpointdev.com/blog/2016/12/bash-loop-wildcards-nullglob-failglob/
shopt -s nullglob
for i in *.pdf; do
    pngname=$(basename $i .pdf).png
    [ -f "$pngname" ] && [ "$pngname" -nt "$i" ] && continue
    echo $i $pngname

    # https://stackoverflow.com/a/12614851
    convert -density 600 "${i}[0]" -resize 800x $pngname
done
