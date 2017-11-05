#!/bin/bash

# Create the output dir, because latex won't.
mkdir -p _build

# Run latex on all tex files.
for file in *.tex; do
	pdflatex \
		-include-directory lib \
		-output-directory _build \
		-interaction errorstopmode \
		${file}
done

