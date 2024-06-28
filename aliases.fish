#!/usr/bin/env fish

alias -s a 'sudo apt'
alias -s aa 'a autoremove'
alias -s af 'sudo apt-file'
alias -s afs 'af search'
alias -s ai 'a install'
alias -s ar 'a purge'
alias -s b bundle
alias -s g git
alias -s ll 'ls -lhaga'
alias -s ls eza
alias -s n npm
alias -s p python
alias -s r 'bin/rails'
alias -s tree 'ls -Tlhag'
alias -s v nvim
alias -s vf vifm
alias -s y yarn

# Docker
alias -s d docker
alias -s de 'd exec -it'
alias -s dr 'd run -it'

# Docker Compose
alias -s dc 'd compose'
alias -s dcd 'dc down --remove-orphans'
alias -s dce 'dc exec'
alias -s dcr 'dc run'
alias -s dcu 'dc up'
