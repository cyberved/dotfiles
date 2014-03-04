install: install-bash install-npm install-xprofile

install-bash:
	@rm -f ~/.bashrc
	@ln -s `pwd`/bashrc ~/.bashrc
	@rm -f ~/.bash_profile
	@ln -s `pwd`/bash_profile ~/.bash_profile

install-npm:
	@rm -f ~/.npmrc
	@ln -s `pwd`/npmrc ~/.npmrc

install-xprofile:
	@rm -f ~/.xprofile
	@ln -s `pwd`/xprofile ~/.xprofile

