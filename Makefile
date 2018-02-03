PY=python
PANDOC=pandoc

BASEDIR=$(CURDIR)
INPUTDIR=$(BASEDIR)/source
OUTPUTDIR=$(BASEDIR)/output
STYLEDIR=$(INPUTDIR)/style

help:
	@echo ' 																	  '
	@echo 'Makefile for the Markdown CV                                       '
	@echo '                                                                       '
	@echo 'Usage:                                                                 '
	@echo '   make html                        (re)generate the web site          '
	@echo '   make pdf                         generate a PDF file  			  '
	@echo '   make docx	                   generate a Docx file 			  '
	@echo '   make tex	                   generate a tex file 			  '
	@echo '                                                                       '
	@echo 'Set the DEBUG variable to 1 to enable debugging, e.g. make DEBUG=1 html'
	@echo ' 																	  '
	@echo 'pandoc test.md -o test.pdf --bibliography=test_ref.bib --csl=plos.csl  '
	@echo ' 																	  '
	@echo 'get templates from: https://github.com/jgm/pandoc-templates			  '

pdf:
	pandoc -s -f markdown-auto_identifiers \
	"$(INPUTDIR)"/*.md \
	-o "$(OUTPUTDIR)/cv.pdf" \
	--template="$(STYLEDIR)/template.tex" \
	--pdf-engine=xelatex

tex:
	pandoc -s \
	"$(INPUTDIR)"/*.md \
	-o "$(OUTPUTDIR)/cv.tex" \
	--template="$(STYLEDIR)/template.tex" \
	--pdf-engine=xelatex

docx:
	pandoc "$(INPUTDIR)"/*.md \
	-o "$(OUTPUTDIR)/cv.docx" \

html:
	pandoc "$(INPUTDIR)"/*.md \
	-o "$(OUTPUTDIR)/cv.html"

.PHONY: help pdf docx html tex
