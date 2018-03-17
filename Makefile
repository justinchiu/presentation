# Filenames to be-used in compilation
MAIN=cvae
TEX=cvae.tex
BIB=*.bib

# Core compilation commands
CC=latexmk
BB=bibtex
FLAGS="-pdf"

all:$(TEX)
	$(CC) $(FLAGS) $(TEX)

	rm -rf *.log *.aux *.bbl *.blg *.out *.fls *.fdb_latexmk *~

clean:
	rm -rf *.pdf *.log *.aux *.bbl *.blg *.out *.fls *.fdb_latexmk *~
