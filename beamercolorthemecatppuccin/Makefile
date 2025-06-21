.PHONY: clean ctan install

beamercolorthemecatppuccin.pdf: beamercolorthemecatppuccin.dtx
	l3build doc

build/unpack/beamercolorthemecatppuccin.sty: beamercolorthemecatppuccin.dtx
	l3build unpack

clean:
	l3build clean

ctan: beamercolorthemecatppuccin-ctan.zip
	

beamercolorthemecatppuccin-ctan.zip: beamercolorthemecatppuccin.dtx
	l3build ctan


install:
	l3build install --full
