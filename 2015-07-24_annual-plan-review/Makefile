TEX_COMPILER=lualatex -shell-escape
BIB_COMPILER=biber -q

all: kdm-apr.pdf

%.pdf: %.tex %.bib
	$(TEX_COMPILER) $<
	$(BIB_COMPILER) $(basename $<)
	$(TEX_COMPILER) $<
	$(TEX_COMPILER) $<

clean:
	rm -rf *.bcf *.aux *.bbl *.dvi *.blg *.log *.bak *.idx *.run.xml \
		*-blx.bib *.nav *.out *.snm *.toc *.pyg *.tdo _minted-*/ \
		*.pdf
