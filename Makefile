# The name of the entry point for the latex file to be built :)
DOCNAME=writeup

all: report

.PHONY: clean

report:
	pdflatex --shell-escape $(DOCNAME).tex
	bibtex $(DOCNAME).aux
	pdflatex --shell-escape $(DOCNAME).tex
	pdflatex --shell-escape $(DOCNAME).tex

view:
	open $(DOCNAME).pdf

clean:
	rm *.blg *.bbl *.aux *.log *.out
