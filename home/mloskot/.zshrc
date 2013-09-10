#
# ~/.zshrc - startup file for Zsh
#
# Part of https://github.com/mloskot/archlinux-config
# Mateusz Loskot <mateusz@loskot.net>
#
for zshf in `ls $HOME/.zsh`; do
    source "$HOME/.zsh/$zshf"
done
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt autocd
unsetopt beep
bindkey -e

zmodload zsh/complist
autoload -Uz colors && colors

autoload -Uz compinit && compinit

# Navigation completion with arrow keys?
# zstyle ':completion:*' menu select
# zstyle ':completion::complete:*:git:*' ignored-patterns directories files

setopt completealiases # complete commandline switches


# http://chneukirchen.org/blog/archive/2007/03/switching-to-zsh.html
# I don’t want it to think // means anything special, though:
zstyle ':completion:*' squeeze-slashes true

# colors in completion
#eval "$(dircolors -b)"
eval $(dircolors)
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}


zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''

alias l='ls -CF'
alias la='ls -A'
alias ll='ls -l'
alias ls='ls --color=auto'
alias lsal='ls -al --color'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'
alias grep='grep --color=auto'
alias gits='git status'
alias gitd='git diff'