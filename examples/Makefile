STYLES := frappe latte macchiato mocha

.PHONY: all clean distclean

all: $(addsuffix .pdf, $(STYLES)) ../assets/preview.webp
	@echo -e "\nyou might need to run this multiple times if there are unresolved references"

$(addsuffix .pdf, $(STYLES)): %.pdf: main.tex
	pdflatex -jobname "$(basename $@)" main.tex

$(addsuffix .webp, $(STYLES)): %.webp: %.pdf
	convert -density 300 "$<" "$@"

$(addprefix ../assets/,$(addsuffix .webp, $(STYLES))): ../assets/%: %
	cp "$<" "$@"

../assets/preview.webp: $(addprefix ../assets/,$(addsuffix .webp, $(STYLES)))
	catwalk -o "$@" $(addprefix ../assets/,$(addsuffix .webp, $(STYLES)))

clean:
	-$(RM) *.aux *.log *.out

distclean: clean
	-$(RM) *.pdf *.webp
