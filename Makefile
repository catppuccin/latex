.PHONY: clean ctan install whiskers

catppuccinpalette.pdf: catppuccinpalette.dtx
	l3build doc

build/unpacked/catppuccinpalette.sty: catppuccinpalette.dtx
	l3build unpack

clean:
	l3build clean

ctan: catppuccinpalette-ctan.zip
	

catppuccinpalette-ctan.zip: catppuccinpalette.dtx
	l3build ctan

install:
	l3build install --full

whiskers:
	whiskers catppuccinpalette.dtx.tera > catppuccinpalette.dtx
