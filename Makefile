PREFIX ?= /usr/local
PKG ?= autup

all:
	@echo Run \'make install\' to install $(PKG).

install:
	@mkdir -p $(DESTDIR)$(PREFIX)/bin
	@cp -p $(PKG) $(DESTDIR)$(PREFIX)/bin/$(PKG)
	@chmod 755 $(DESTDIR)$(PREFIX)/bin/$(PKG)

uninstall:
	@rm -rf $(DESTDIR)$(PREFIX)/bin/$(PKG)
