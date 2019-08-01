INSTALL_LOCATION = /usr/local/bin
COMPLETION_LOCATION = /etc/bash_completion.d/

install:
	cp dx $(INSTALL_LOCATION)
	cp dx-completion.bash $(COMPLETION_LOCATION)

uninstall:
	rm $(INSTALL_LOCATION)/dx $(COMPLETION_LOCATION)/dx-completion.bash
