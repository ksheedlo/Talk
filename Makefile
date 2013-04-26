PANDOC=pandoc

.PHONY: all
all: talk.pdf

%.pdf: %.md
	$(PANDOC) -f markdown -V theme:PaloAlto --write beamer --template talk.beamer -o $@ $^

.PHONY: clean
clean:
	rm *.pdf
