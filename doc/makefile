all: dnlo.pdf

figures = 

dnlo.pdf: dnlo.aux dnlo.bbl dnlo.tex $(figures)
	pdflatex dnlo

dnlo.aux: dnlo.tex $(figures)
	pdflatex dnlo
	bibtex dnlo

dnlo.bbl: dnlo.aux dnlo.bib
	bibtex dnlo

.PHONY: clean

clean:
	@rm -f *.pyc *.out *.aux *.log *.bbl *.blg *.synctex.gz *~ $(figures)

