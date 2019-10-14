.PHONY: all clean final

PDFLATEX = pdflatex -shell-escape
BIBTEX = bibtex

all:
	$(PDFLATEX) root

final:
	$(PDFLATEX) root
	$(BIBTEX) root
	$(PDFLATEX) root
	$(PDFLATEX) root

clean:
	rm -fr *.aux *.bbl _minted-root *.out *.log
