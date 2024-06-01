.PHONY: clean ctan install

catppuccinpalette.pdf: catppuccinpalette.dtx
	l3build doc

build/unpack/catppuccinpalette.sty: catppuccinpalette.dtx
	l3build unpack

clean:
	l3build clean

ctan: catppuccinpalette-ctan.zip
	

catppuccinpalette-ctan.zip: catppuccinpalette.dtx
	l3build ctan

install:
	l3build install --full
