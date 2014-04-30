Wed Apr 30 09:17:16 IDT 2014
============================

0. Prerequisites
   a. Make sure that you have TeX installed along with the Texinfo suite,
      such as texi2dvi and texindex.

   b. Make sure that you have gawk 4.0 or later in your path. For the
      scripts to work as-is, it should be /usr/local/bin/gawk. The usual
      incantation should work:

	wget http://ftp.gnu.org/gnu/gawk/gawk-4.1.1.tar.gz
	tar -xzf gawk-4.1.1
	cd gawk-4.1.1
	./configure && make && make check && sudo make install

1. Bootstrap the scripts:

	./bootstrapping/jrtangle0 texiwebjr.twjr

2. Create the PDF:

	make
