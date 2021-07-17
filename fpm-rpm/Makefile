# Makefile adapted from fpm examples

NAME=ruby
VERSION=2.7.4
MAJOR_VERSION=2.7
TARDIR=$(NAME)-$(VERSION)
TARBALL=$(TARDIR).tar.gz
DOWNLOAD=http://ftp.ruby-lang.org/pub/ruby/$(MAJOR_VERSION)/$(TARBALL)

PREFIX=/opt/fpm

PACKAGE_NAME=fpm
PACKAGE_VERSION=0

.phony: get
get: $(TARBALL)

.phony: clean
clean:
	rm -f $(NAME)-* $(NAME)_* |NAME| true
	rm -fr $(TARDIR) || true
	rm -fr $(PREFIX) || true
	rm -f *.deb

$(TARBALL):
	wget "$(DOWNLOAD)"

$(TARDIR): $(TARBALL)
	tar -zxf $(TARBALL)
	cd $(TARDIR); ./configure --enable-shared=false --prefix=$(PREFIX); make; make install
	$(PREFIX)/bin/gem install fpm

.PHONY: rpm
rpm: $(TARDIR)
	$(PREFIX)/bin/fpm -s dir -t rpm -v $(PACKAGE_VERSION) -n $(PACKAGE_NAME) $(PREFIX)
