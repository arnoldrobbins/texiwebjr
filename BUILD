Sun Apr  3 16:50:31 IDT 2016
============================

0. Prerequisites
   a. Make sure that you have TeX installed along with the Texinfo suite,
      such as texi2dvi and texindex. You will also need the Metafont
      logo.

   b. Make sure that you have gawk 4.0 or later in your path. For the
      scripts to work as-is, it should be /usr/local/bin/gawk. The usual
      incantation should work:

	wget http://ftp.gnu.org/gnu/gawk/gawk-4.1.3.tar.gz
	tar -xzf gawk-4.1.3.tar.gz
	cd gawk-4.1.3
	./configure && make && make check && sudo make install

1. Bootstrap the scripts and all the various formats:

	# Edit ./bootstrapping/jrtangle0 to point to the installed gawk
	# if it's different. Also edit texiwebjr.twjr to point to the
	# same place.
	make	# Use the Makefile from the Git repo
