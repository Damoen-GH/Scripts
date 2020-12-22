#!/usr/bin/bash

#System Maintenance Script for Arch
#----------------------------------

#System & software update
    sudo pacman -Syu
    yay -Syu

#Clean cache
    sudo pacman -Sc
    yay -Sc

#Clean home directory cache
    rm -rf ~/.cache/*

#Remove orphan packages
    sudo pacman -Rns $(pacman -Qtdq)
