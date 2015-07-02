COMPILER=lualatex -shell-escape
BIB_COMPILER=biber -q
LATEX_SRC=$(wildcard *.tex)
PIE=perl -pi -e

all: tex img/shanent.pdf

img/shanent.pdf: shanent.R
	Rscript shanent.R

tex:
ifneq ($(wildcard $(patsubst %.tex,%.pdf,$(LATEX_SRC))),)
	rm -v $(patsubst %.tex,%.pdf,$(LATEX_SRC))
endif
	$(COMPILER) $(LATEX_SRC)
	$(COMPILER) $(LATEX_SRC)
	ls -lh $(patsubst %.tex,%.pdf,$(LATEX_SRC))
	rm -f *.bcf *.aux *.bbl *.dvi *.blg *.log *.bak *.idx *.run.xml *-blx.bib *.nav *.out *.snm *.toc *.pyg *.tdo

clean:
	rm -f *.bcf *.aux *.bbl *.dvi *.blg *.log *.bak *.idx *.run.xml *-blx.bib *.nav *.out *.snm *.toc *.pyg *.tdo
