# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=2000
SAVEHIST=2000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/crito/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

# Set prompt
PS1=$'%F{def}%(?..%B%K{red}[%?]%K{def}%b )%(1j.%b%K{yel}%F{bla}%jJ%F{def}%K{def} .)%F{white}%B%*%b %F{m}%m:%F{white}%~%(!.#.$) %F{def}'

# Enable color support of ls
if [[ "$TERM" != "dumb" ]]; then
		if [[ -x `which dircolors 2> /dev/null` ]]; then
				eval `dircolors -b`
				alias 'ls=ls --color=auto'
		fi
fi

# Short command aliases
alias la='ls -A'
alias ll='ls -l'
alias grep='grep --color=auto'
alias fgrep='fgrep --color=auto'
alias egrep='egrep --color=auto'
alias python='python3'
alias ipython='ipython3'
alias git st='git status'

export PATH=/home/crito/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/crito/bin:

# Sets the Mail Environment Variable
MAIL=/var/spool/mail/alick && export MAIL

# History ignore common commands
export HISTIGNORE=":pwd:uptime:ls:la:clear:history:"

if [[ -r ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh ]]; then
	source ~/.local/lib/python2.7/site-packages/powerline/bindings/zsh/powerline.zsh
fi
