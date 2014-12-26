PREFIX = /usr/local
BASE = $(DESTDIR)$(PREFIX)/lib/hardening-wrapper

install: cc-wrapper.sh ld-wrapper.sh common.sh
	mkdir -p $(BASE)/bin

	install -m755 cc-wrapper.sh ld-wrapper.sh $(BASE)
	install -m644 common.sh $(BASE)

	ln -f $(BASE)/cc-wrapper.sh $(BASE)/bin/c89
	ln -f $(BASE)/cc-wrapper.sh $(BASE)/bin/c99
	ln -f $(BASE)/cc-wrapper.sh $(BASE)/bin/cc
	ln -f $(BASE)/cc-wrapper.sh $(BASE)/bin/c++
	ln -f $(BASE)/cc-wrapper.sh $(BASE)/bin/clang
	ln -f $(BASE)/cc-wrapper.sh $(BASE)/bin/clang++
	ln -f $(BASE)/cc-wrapper.sh $(BASE)/bin/gcc
	ln -f $(BASE)/cc-wrapper.sh $(BASE)/bin/g++

	ln -f $(BASE)/ld-wrapper.sh $(BASE)/bin/ld
	ln -f $(BASE)/ld-wrapper.sh $(BASE)/bin/ld.bfd
	ln -f $(BASE)/ld-wrapper.sh $(BASE)/bin/ld.gold

.PHONY: install
