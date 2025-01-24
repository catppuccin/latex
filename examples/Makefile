.PHONY: all clean

STYLES := frappe latte macchiato mocha

all: $(addsuffix .pdf, $(STYLES)) ../assets/preview.webp
	@echo -e "\nyou might need to run this multiple times if there are unresolved references"

$(addsuffix .pdf, $(STYLES)): %.pdf: %.tex
	pdflatex "$<"

$(addsuffix .webp, $(STYLES)): %.webp: %.pdf
	convert -density 300 "$<" "$@"

$(addprefix ../assets/,$(addsuffix .webp, $(STYLES))): ../assets/%: %
	cp "$<" "$@"

../assets/preview.webp: $(addprefix ../assets/,$(addsuffix .webp, $(STYLES)))
	catwalk -o "$@" $(addprefix ../assets/,$(addsuffix .webp, $(STYLES)))

clean:
	-$(RM) *.aux *.log *.pdf *.webp *.out
