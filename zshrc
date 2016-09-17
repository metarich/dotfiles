# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/ktomita/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

autoload -U promptinit
promptinit

export PATH=$PATH:/usr/local/bin/
export LANG="en_US.UTF-8"
export LANGUAGE="en_US:en"
export LC_ALL="en_US.UTF-8"
autoload colors
colors
PROMPT='%F{cyan}%n@%m%f:%F{yellow}%C%f%% '
