install: install-bash install-xprofile

install-bash:
	@rm -f ~/.bashrc
	@ln -s `pwd`/bashrc ~/.bashrc

install-xprofile:
	@rm -f ~/.xprofile
	@ln -s `pwd`/xprofile ~/.xprofile

