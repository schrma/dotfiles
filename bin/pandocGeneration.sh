#!/bin/sh

## Definitions
file=$1
latexDefinitions=~/.dotfiles/bin/pandoc-files/margins.sty
imageFilterFile=~/.dotfiles/bin/pandoc-files/pandoc-wrapfig.py
engine="--pdf-engine=xelatex" 

if [ -f $imageFilterFile ]; then
    filter="--filter $imageFilterFile" 
fi

## if it is from joplin (in tmp) find a good name for the pdf
## Otherwise save it in the same folder
fileName=$(basename $file .md)
firstDirectory=$(basename $(dirname $file))
if [ "$firstDirectory" = "tmp" ]; then
    name=$(head $file -n 1 | sed 's/# //g' | sed 's/#//g' | sed  's/ /_/g' | sed 's!/!!g' | sed 's/__/_/g')
    fileName=$name
    ## In whichever temp dir it was I will save the pdf to the "real" /tmp directory
    baseDir=/tmp
else
    echo "here--------"
    fileName=$fileName
    baseDir=$(dirname $file)
fi

## Put the latex commands from the md file on top
tempFile=$(mktemp)
grep "\\fancy" $file >> $tempFile
echo "" >> $tempFile
cat $file >> $tempFile

## Generate pdf 
pandoc $engine -s -V papersize:a4 -H $latexDefinitions --variable urlcolor=cyan  "$tempFile" -o "$baseDir/$fileName.pdf"

## open it directly
evince "$baseDir/$fileName.pdf" & 2> /dev/null

## Cleanup
rm $tempFile
