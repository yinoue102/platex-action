#!/bin/bash

# . = /github/workspace if actions/checkout
set -eux

if [ ! -f .latexmkrc ]; then
    cp /.latexmkrc .latexmkrc
fi

# make diff version tex file
latexdiff-vc main.tex -r HEAD
# make pdf
# latexmk $INPUT_LATEX_FILE_NAME
latexmk main-diffHEAD.tex