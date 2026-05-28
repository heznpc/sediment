# sediment — paper build helpers
#
# CI compiles main.tex from the paper/ directory so that BibTeX finds
# refs.bib without BIBINPUTS. This Makefile mirrors that contract for
# local builds, sparing contributors the `(cd paper && latexmk ...)`
# footgun called out in the bibliography preamble of paper/main.tex.

PAPER_DIR := paper
MAIN      := main

.PHONY: help pdf clean cleanall watch

help: ## Show available targets
	@awk 'BEGIN {FS = ":.*##"} /^[a-zA-Z_-]+:.*##/ { printf "  %-10s %s\n", $$1, $$2 }' $(MAKEFILE_LIST)

pdf: ## Compile paper/main.tex to paper/main.pdf (latexmk: pdflatex+bibtex+pdflatex+pdflatex)
	cd $(PAPER_DIR) && latexmk -pdf -interaction=nonstopmode -halt-on-error $(MAIN).tex

watch: ## Live rebuild on save (latexmk -pvc)
	cd $(PAPER_DIR) && latexmk -pdf -pvc -interaction=nonstopmode $(MAIN).tex

clean: ## Remove latexmk-managed aux files (keeps the PDF)
	cd $(PAPER_DIR) && latexmk -c

cleanall: ## Remove aux files AND the PDF
	cd $(PAPER_DIR) && latexmk -C
