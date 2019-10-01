.PHONY: all clean

PDFLATEX = pdflatex -shell-escape

all:
	$(PDFLATEX) root

clean:
	rm -fr *.aux *.bbl _minted-root *.out *.log
