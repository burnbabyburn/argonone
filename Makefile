srcdir=argonone

install:
		install -Dm755 "${srcdir}"/argonone-config $(DESTDIR)$(prefix)/usr/bin/argonone-config
		install -Dm755 "${srcdir}"/argonone-poweroff.py $(DESTDIR)$(prefix)/usr/lib/systemd/system-shutdown/argonone-poweroff.py
		install -Dm666 "${srcdir}"/argonone.conf $(DESTDIR)$(prefix)/etc/argonone.conf
		install -Dm755 "${srcdir}"/argonone.py $(DESTDIR)$(prefix)/opt/argonone/argonone.py

clean:
		-rm -rf debian/argonone

distclean:	clean

uninstall:
		-rm -rf $(DESTDIR)$(prefix)/opt/argonone/

.PHONY: install uninstall
