#
# Copyright (C) 2013, 2014, 2015 Arnold David Robbins
# 
# This file is part of TexiWeb Jr., a literate programming system.
# 
# TexiWeb Jr. is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3 of the License, or
# (at your option) any later version.
# 
# TexiWeb Jr. is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
# 
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software
# Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301, USA

# FIXME: Maybe make the Makefile depend on the .twjr file.
# FIXME: Run xmllint on the xml file.

SOURCE = texiwebjr.twjr
TEXISOURCE = texiwebjr.texi

all: jrweave jrtangle texiwebjr.pdf

jrweave jrtangle: $(SOURCE)
	./bootstrapping/jrtangle0 $(SOURCE)

$(TEXISOURCE): $(SOURCE) jrweave
	./jrweave $(SOURCE) > $(TEXISOURCE)

texiwebjr.pdf: $(TEXISOURCE)
	texi2dvi --pdf --batch --build-dir=texiwebjr.t2p \
		-o texiwebjr.pdf texiwebjr.texi

docbook: texiwebjr.xml

texiwebjr.xml: $(TEXISOURCE)
	makeinfo --docbook $(TEXISOURCE)

dbpdf: docbook
	dblatex texiwebjr.xml

html: texiwebjr.html

texiwebjr.html: $(TEXISOURCE)
	makeinfo --no-split --html $(TEXISOURCE)

clean:
	rm -f texiwebjr.html texiwebjr.info texiwebjr.xml
	rm -f texiwebjr.texi texiwebjr.pdf
	rm -fr texiwebjr.t2p

distclean: clean
	rm jrweave jrtangle Makefile
