all: attochem-template.zip

OUTPUT_DIR := "../../static/abstract-templates/"

attochem-template/attochem-template.pdf: attochem-template/attochem-template.tex attochem-template/Logo-AttoChem.jpg
	cd attochem-template && latexmk -pdflatex=pdflatex -pdf attochem-template.tex

attochem-template.zip: attochem-template/attochem-template.pdf attochem-template/attochem-template.tex attochem-template/Logo-AttoChem.jpg
	zip -r9 $@ $^
	mkdir -p $(OUTPUT_DIR)
	cp $@ $(OUTPUT_DIR)

.PHONY: clean
clean:
	rm -f attochem-template.zip
	cd attochem-template && latexmk -pdflatex=pdflatex -pdf -C attochem-template.tex
