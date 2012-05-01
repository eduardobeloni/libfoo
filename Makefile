LIBNAME = libfoo
PREFIX ?= /usr/local

all:
	$(MAKE) -C ./lib LIBNAME=$(LIBNAME)
	$(MAKE) -C ./src

clean:
	$(MAKE) -C ./lib clean
	$(MAKE) -C ./src clean

install: all
	install -d $(PREFIX)/lib/
	install -m 755 lib/$(LIBNAME).so $(PREFIX)/lib/
	install -m 644 lib/$(LIBNAME).a $(PREFIX)/lib/
	install -d $(PREFIX)/include/
	install -m 644 lib/foo.h $(PREFIX)/include

uninstall:
	rm -f $(PREFIX)/lib/$(LIBNAME).*
	rm -f $(PREFIX)/include/foo.h
