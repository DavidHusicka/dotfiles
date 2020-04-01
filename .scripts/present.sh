#!/bin/sh

FILE_RANDOMIZER=$((1 + RANDOM % 1000))
pandoc $1 -t beamer -o /tmp/$1-$FILE_RANDOMIZER.pdf
zathura -P 1 /tmp/$1-$FILE_RANDOMIZER.pdf
rm /tmp/$1-$FILE_RANDOMIZER.pdf
