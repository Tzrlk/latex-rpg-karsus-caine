#!/bin/bash

# Create the output dir, because latex won't.
mkdir -p _build

# Set up the pdflatex options
TEX_OPTS="-halt-on-error ${TEX_OPTS}"
TEX_OPTS="-interaction nonstopmode ${TEX_OPTS}"
TEX_OPTS="-output-directory _build ${TEX_OPTS}"

# If there's any command input, we're running in miktex
if [ ! -z "${1}" ]; then
	TEX_OPTS="-include-directory lib ${TEX_OPTS}"
fi

# Run latex with options on all tex files.
for file in $(find src -name *.tex); do
	pdflatex ${TEX_OPTS} ${file}
done

