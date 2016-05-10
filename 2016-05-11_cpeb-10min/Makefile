TEX_COMPILER=lualatex -shell-escape
BIB_COMPILER=biber -q

all: kdm.pdf

%.pdf: %.tex %.bib $(shell find img )
	$(TEX_COMPILER) $<
	$(BIB_COMPILER) $(basename $<)
	$(TEX_COMPILER) $<
	$(TEX_COMPILER) $<

clean:
	rm -rf *.bcf *.aux *.bbl *.dvi *.blg *.log *.bak *.idx *.run.xml \
		*-blx.bib *.nav *.out *.snm *.toc *.pyg *.vrb *.tdo _minted-*/

cleanpdf: clean
	rm -rf *.pdf
