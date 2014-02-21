install: install-bash

install-bash:
	@rm -f ~/.bashrc
	@ln -s `pwd`/bashrc ~/.bashrc

