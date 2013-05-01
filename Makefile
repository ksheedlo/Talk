PANDOC=pandoc
PANDOC_FLAGS=-V theme:PaloAlto

.PHONY: all
all: talk.pdf

%.pdf: %.md
	$(PANDOC) -f markdown $(PANDOC_FLAGS) --write beamer --template talk.beamer -o $@ $^

.PHONY: clean
clean:
	rm *.pdf
