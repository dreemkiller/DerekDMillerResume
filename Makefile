LATEX=latex
PDFLATEX=pdflatex
DVIPS=dvips
PS2PDF=ps2pdf

all: DerekDMillerResume.pdf

DerekDMillerResume.dvi: DerekDMillerResume.tex
	$(LATEX) DerekDMillerResume.tex
	$(LATEX) DerekDMillerResume.tex

DerekDMillerResume.pdf: DerekDMillerResume.dvi
	$(DVIPS) DerekDMillerResume.dvi
	$(PS2PDF) DerekDMillerResume.ps

clean:
	rm -f *.dvi *.pdf *.log *.aux *.ps
