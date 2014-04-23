PROJECT=cbundler
VER=$(shell cat VERSION)

all:

install:
	install -D mkcbundle $(DESTDIR)/usr/bin
	install -D cbundle $(DESTDIR)/usr/bin

dist:
	mkdir $(PROJECT)-$(VER)
	tar --exclude-vcs --exclude=$(PROJECT)-$(VER) -cf - . | tar -C $(PROJECT)-$(VER) -xvf -
	tar -czvf $(PROJECT)-$(VER).tar.gz $(PROJECT)-$(VER)
	rm -rf $(PROJECT)-$(VER)

