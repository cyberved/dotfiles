#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# OPTIONS
shopt -s checkwinsize
shopt -s autocd

# HISTORY
export HISTCONTROL=ignoreboth

# EDITOR
export EDITOR="vim"

# LESS man page colors
# stolen from http://tldp.org/LDP/abs/html/sample-bashrc.html
export LESS_TERMCAP_mb=$'\E[01;31m'
export LESS_TERMCAP_md=$'\E[01;31m'
export LESS_TERMCAP_me=$'\E[0m'
export LESS_TERMCAP_se=$'\E[0m'
export LESS_TERMCAP_so=$'\E[01;44;33m'
export LESS_TERMCAP_ue=$'\E[0m'
export LESS_TERMCAP_us=$'\E[01;32m'

# ALIASES
alias cp='cp -i'
alias mv='mv -i'
alias rm='rm -i'
alias grep='grep --color=auto'
alias ls='ls --color=auto'

# KEYBINDINGS
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

# PYENV
if [ -d ~/.pyenv/bin ]; then
    export PYENV_ROOT="$HOME/.pyenv"
    export PATH="${PYENV_ROOT}/bin:$PATH"
    eval "$(pyenv init -)"
fi

# RBENV
if [ -d ~/.rbenv/bin ]; then
    export RBENV_ROOT="$HOME/.rbenv"
    export PATH="${RBENV_ROOT}/bin:$PATH"
    eval "$(rbenv init -)"
fi

# NPM
export NPM_PACKAGES="$HOME/.npm-packages"
export PATH="$NPM_PACKAGES/bin:$PATH"

# PROMPT
PS1='[\u@\h \W]\$ '
if [ -f /usr/share/git/completion/git-prompt.sh ]; then
    export GIT_PS1_SHOWDIRTYSTATE=1
    export GIT_PS1_SHOWSTASHSTATE=1
    export GIT_PS1_SHOWUNTRACKEDFILES=1
    source /usr/share/git/completion/git-prompt.sh
    PS1='[\W\[\e[0;32m\]$(__git_ps1 " %s")\[\e[m\]]\$ '
fi

# Source local bashrc if it exists
if [ -f ~/.bashrc.local ]; then
    source ~/.bashrc.local
fi
