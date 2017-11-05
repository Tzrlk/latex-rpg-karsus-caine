#!/bin/bash

# Create the output dir, because latex won't.
mkdir -p _build

# Run latex on all tex files.
pdflatex \
	-include-directory lib \
	-output-directory _build \
	*.tex

