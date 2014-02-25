install: install-bash install-xprofile

install-bash:
	@rm -f ~/.bashrc
	@ln -s `pwd`/bashrc ~/.bashrc
	@rm -f ~/.bash_profile
	@ln -s `pwd`/bash_profile ~/.bash_profile

install-xprofile:
	@rm -f ~/.xprofile
	@ln -s `pwd`/xprofile ~/.xprofile

