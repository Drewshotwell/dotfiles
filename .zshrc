# Lines configured by zsh-newuser-install
#HISTFILE=~/.histfile
#HISTSIZE=1000
#SAVEHIST=1000
#bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
#zstyle :compinstall filename '/home/dvs/.zshrc'

#autoload -Uz compinit
#compinit
# End of lines added by compinstall
#

# Enable colors and change prompt:
autoload -U colors && colors
#PS1="%F{yellow}%~ %F{blue}λ%{$reset_color%} "

PROMPT="%F{yellow}%~ %F{red}%(?..<%?> )%F{blue}λ%{$reset_color%} "
# History in cache directory:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.cache/zsh/history

# Basic auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots)		# Include hidden files.

setopt autocd

# Plugins
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

#Aliases
source ~/.zsh/aliasrc

export LANG=en_US.UTF-8
export LC_ALL=en_US.UTF-8
bindkey "^[[1;5C" forward-word
bindkey "^[[1;5D" backward-word

#fortune
random-cow-fortune
