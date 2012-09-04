
#define the suffixes
.SUFFIXES:	.tex

#macro definitions
SHELL = /bin/sh
LATEX = pdflatex

.tex.aux:	
	$(LATEX) $<


all:	DifferentialEquations.pdf

DifferentialEquations.pdf: DifferentialEquations.tex *.tex
	$(LATEX) DifferentialEquations

force:
	$(LATEX) DifferentialEquations


clean:
	rm -f *.aux *.nav *.snm *.toc *.log *.dvi *.out

