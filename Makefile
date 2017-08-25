PREFIX=/usr/local/

install:
	install -D docker-mysql ${PREFIX}/bin/docker-mysql
	install -D docker-mysql.completion ${PREFIX}/share/bash-completion/docker-mysql
	@echo "If installed locally, dont forget to add to your ~/.bashrc: "
	@echo "  for file in ${PREFIX}/share/bash-completion/*; do source \$$file; done"
	echo "and reload your shell"

uninstall:
	rm -v ${PREFIX}/bin/docker-mysql || true
	rm -v ${PREFIX}/share/bash-completion/docker-mysql || true
