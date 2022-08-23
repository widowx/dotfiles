#
# ~/.bashrc
#

# Sway startup automatically
 if [ -z $DISPLAY ] && [ "$(tty)" = "/dev/tty1" ]; then
     exec sway
 fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto -a'
PS1='[\u@\h \W]\$ '
alias ll='ls --color=auto -alh'
alias get='sudo pacman -S'
alias syncdb='sudo pacman -Sy'
alias update='sudo pacman -Su'
alias upgrade='sudo pacman -Syu --noconfirm'
alias del='sudo pacman -Rns'
alias add='sudo pacman -U'
alias clean='sudo pacman -Sc'
alias neo='neofetch'
alias nv='nvim'
alias sl='swaylock'
alias mac='macchanger -s wlan0 | grep Current ; macchanger -s eno1 | grep Current'
