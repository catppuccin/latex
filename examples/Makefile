STYLES := latte frappe macchiato mocha

.PHONY: all clean distclean beamer.pdf beamer_frames

all: $(addsuffix .pdf, $(STYLES)) beamer.webp ../assets/beamer.webp ../assets/preview.webp
	@echo -e "\nyou might need to run this multiple times if there are unresolved references"

$(addsuffix .pdf, $(STYLES)): %.pdf: main.tex
	pdflatex -jobname "$(basename $@)" main.tex

beamer.pdf: beamer.tex
	pdflatex beamer.tex

$(addsuffix .webp, $(STYLES)): %.webp: %.pdf
	convert -density 300 "$<"[0] "$@"

beamer_frames: beamer.pdf
	convert -density 300 "$<"[0,1,11,16,17] "beamer_%02d.webp"

beamer.webp: beamer_frames
	convert +append beamer_*.webp "$@"

$(addprefix ../assets/,$(addsuffix .webp, $(STYLES) beamer)): ../assets/%: %
	cp "$<" "$@"

../assets/preview.webp: $(addprefix ../assets/,$(addsuffix .webp, $(STYLES)))
	catwalk -o "$@" $(addprefix ../assets/,$(addsuffix .webp, $(STYLES)))

clean:
	-$(RM) *.aux *.log *.out *.nav *.snm *.toc

distclean: clean
	-$(RM) *.pdf *.webp
