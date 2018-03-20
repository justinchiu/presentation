# Filenames to be-used in compilation
MAIN=cvae
TEX=main.tex
BIB=*.bib

# Core compilation commands
CC=latexmk -pdflatex="pdflatex --shell-escape %O %S"
BB=bibtex
FLAGS="-pdf"

all:$(TEX)
	$(CC) $(FLAGS) $(TEX)
	rm -rf *.log *.aux *.bbl *.blg *.out *.fls *.fdb_latexmk *.nav *.snm *.toc *~
	
cvae:cvae.tex
	$(CC) $(FLAGS) cvae.tex

	rm -rf *.log *.aux *.bbl *.blg *.out *.fls *.fdb_latexmk *.nav *.snm *.toc *~

clean:
	rm -rf *.pdf *.log *.aux *.bbl *.blg *.out *.fls *.fdb_latexmk *.nav *.snm *.toc *~
