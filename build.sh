#!/bin/bash

#please download https://github.com/astefanutti/decktape

DECKTAPE_PATH="../decktape-1.0.0/"
ENGINE=decktape.js
PREZ_FORMAT=remark
FILES=($(find . -maxdepth 3 -iname "*.html"))

for target in ${FILES[@]}; do
    targetpdf=${target%.html}
    echo "RUNNING: ${DECKTAPE_PATH}phantomjs ${DECKTAPE_PATH}$ENGINE $PREZ_FORMAT $target ${targetpdf}.pdf"
    ${DECKTAPE_PATH}phantomjs ${DECKTAPE_PATH}$ENGINE $PREZ_FORMAT $target ${targetpdf}.pdf
done
