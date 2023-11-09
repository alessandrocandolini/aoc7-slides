help:     ## Show this help.
	@sed -ne '/@sed/!s/## //p' $(MAKEFILE_LIST)

all: aoc7-slides.pdf ## build all targets

aoc7-slides.pdf: aoc7-slides.tex Chapters/*.tex FrontBackmatter/*.tex myBibliography9.bib ## Build aoc7-slides.tex
	@latexmk -pdflatex aoc7-slides.tex

clean: ## remove target
	@rm -f category-book.pdf





