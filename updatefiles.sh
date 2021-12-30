#! /bin/sh

# This script copies the latest files from
# the required directories to keep the 
# dotfiles up to date

cp ~/.config/nvim/** ./nvim/
cp ~/.config/polybar/mycustom/config.ini ./polybar/config.ini
cp -r ~/.config/rofi/** ./rofi
cp ~/.zshrc ./zsh
cp ~/.config/bspwm/** ./bspwm
cp ~/.config/picom/picom.conf ./picom
cp ~/.config/alacritty/alacritty.yml ./alacritty
cp ~/.config/dunst/dunstrc ./dunst

