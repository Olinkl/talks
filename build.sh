#!/bin/bash

#please download https://github.com/astefanutti/decktape
PWD=`pwd`

#DECKTAPE_PATH="../decktape/"
PREZ_FORMAT=remark
FILES=($(find . -maxdepth 3 -iname "*.html"))
#target=$PWD/bitcoin-talks-lille/2018-01-08-intro-blockchaines.html
#targetpdf=2018-01-08-intro-blockchaines.pdf

for target in ${FILES[@]}; do
    targetpdf=${target%.html}
    echo "RUNNING: decktape $PREZ_FORMAT $target ${targetpdf}.pdf"
    decktape $PREZ_FORMAT $target ${targetpdf}.pdf
done
