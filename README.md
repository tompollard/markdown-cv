markdown-cv [![Build Status](https://travis-ci.org/tompollard/markdown-cv.svg?branch=master)](https://travis-ci.org/tompollard/markdown-cv)
===========

Simple Markdown CV / Resume

## Acknowledgments

The original CV template is based on a version by Craig Eley, with a couple of minor modifications to make it run with Pandoc.

## Requirements

Requires Latex (http://latex-project.org/ftp.html) and Pandoc (http://johnmacfarlane.net/pandoc/) to be installed on your system.

## Instructions

1. Edit the source file at: /source/cv.md
2. Run 'make pdf' in the folder containing the Makefile
3. A new PDF will be generated in the /output folder

### With Docker compose

If you are not feeling like install pandoc and all tooles.

Heres an docurized way to get the same result as with the make command.

All thats needed to run to create an pdf is:
> docker-compose up mdcv-pdf

and the rest:

> docker-compose up mdcv-tex

> docker-compose up mdcv-docx

> docker-compose up mdcv-html

## Notes / to do

1. Create a list of useful commands
2. Create instructions for adding variables, changing style etc.
3. Add citation to related projects.
