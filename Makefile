OUTEXT := pdf
SYNCTEX := 1
FILES := cv.tex cover-letter.tex

LATEX_FLAGS := -file-line-error -synctex=$(SYNCTEX)

SYNCTEX_JUNK := $(wildcard *.synctex.gz)
BIBTEX_JUNK := $(wildcard *.bbl *-blx.bib *.run.xml *.pre)
JUNK := $(SYNCTEX_JUNK) $(BIBTEX_JUNK)

all:
	TEXINPUTS="./sty:$(TEXINPUTS)" latexmk -latexoption="$(LATEX_FLAGS)" -$(OUTEXT) $(FILES)

clean:
	latexmk -c
	rm -f $(JUNK)

clobber:
	latexmk -C
	rm -f $(JUNK)

.PHONY : all clean clobber
