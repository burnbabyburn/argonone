srcdir=argonone

install:
		install -Dm755 "${srcdir}"/argonone-config $(DESTDIR)$(prefix)/usr/bin/argonone-config
		install -Dm755 "${srcdir}"/argononed-poweroff.py $(DESTDIR)$(prefix)/usr/lib/systemd/system-shutdown/argononed-poweroff.py
		install -Dm666 "${srcdir}"/argononed.conf $(DESTDIR)$(prefix)/etc/argononed.conf
		install -Dm755 "${srcdir}"/argononed.py $(DESTDIR)$(prefix)/opt/argonone/argononed.py

clean:
		-rm -rf debian/argonone

distclean:	clean

uninstall:
		-rm -rf $(DESTDIR)$(prefix)/opt/argonone/

.PHONY: install uninstall
