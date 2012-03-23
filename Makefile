#
# Makefile for Kubuntu Helpers
# (C) 2008 by Guillaume Martres <smarter@ubuntu.com>
# (C) 2007 by Harald Sitter <sitter.harald@gmail.com>
# (C) 2005 by Stephan Hermann <sh@sourcecode.de>
#

ifndef DESTDIR
DESTDIR=
endif

providers=$(shell /bin/ls searchproviders)

SERVICE_DIR=$(shell kde4-config --install services)

SEARCHPROVIDERS:=$(SERVICE_DIR)/searchproviders

all: 

install: searchproviders

searchproviders: $(providers)

%.desktop: 
	@echo "Installing: $(DESTDIR)$(SEARCHPROVIDERS)/$@"
	install -D -m 644 searchproviders/$@ $(DESTDIR)$(SEARCHPROVIDERS)/$@
