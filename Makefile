PROJECT=cvenvr
VER=$(shell cat VERSION)

all:

install:
	install -D mkcvenv $(DESTDIR)/usr/bin/mkcvenv
	install -D cvenv $(DESTDIR)/usr/bin/cvenv

dist:
	mkdir $(PROJECT)-$(VER)
	tar --exclude-vcs --exclude=$(PROJECT)-$(VER) -cf - . | tar -C $(PROJECT)-$(VER) -xvf -
	tar -czvf $(PROJECT)-$(VER).tar.gz $(PROJECT)-$(VER)
	rm -rf $(PROJECT)-$(VER)

