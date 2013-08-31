TEX = $(wildcard *.tex)

all:
	rubber --pdf $(TEX)

clean:
	rubber --clean $(TEX)

.PHONY : all clean
