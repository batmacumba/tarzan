ifeq ($(shell uname -s), Darwin)
	PREFIX = /usr/local
endif
ifeq ($(shell uname -s), Linux)
	PREFIX = /usr/local
#else
#	PREFIX = ???
endif

.PHONY: install
install: tarzan
	mkdir -p $(DESTDIR)$(PREFIX)/bin
	cp $< $(DESTDIR)$(PREFIX)/bin/tarzan

.PHONY: uninstall
uninstall:
	rm -f $(DESTDIR)$(PREFIX)/bin/tarzan
