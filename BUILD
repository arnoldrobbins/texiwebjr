Mon Apr 22 22:05:27 IDT 2019
============================

0. Prerequisites
   a. Make sure that you have TeX installed along with the Texinfo suite,
      such as texi2dvi and texindex. You will also need the Metafont
      logo.

   b. Make sure that you have gawk 4.0 or later in your path. For the
      scripts to work as-is, it should be /usr/bin/gawk. (This is where
      most Linux distributions put it.)
      
   c. To build and install gawk manually, the usual incantation should work:

	wget http://ftp.gnu.org/gnu/gawk/gawk-5.0.0.tar.gz
	tar -xzf gawk-5.0.0.tar.gz
	cd gawk-5.0.0
	./configure && make && make check && sudo make install

1. Bootstrap the scripts and all the various formats:

	# Edit ./bootstrapping/jrtangle0 to point to the installed gawk
	# if it's different. Also edit texiwebjr.twjr to point to the
	# same place.
	make	# Use the Makefile from the Git repo
