#!/bin/sh

find . -not -path "**/.git/*" -not -name ".git" -not -path "./update.sh" -delete

cp -r ~/.config/polybar .
cp -r ~/.config/bspwm .
cp -r ~/.config/sxhkd .
cp -r ~/.config/alacritty .
cp -r ~/.config/fish .

cp ~/.config/compton.conf .

cp ~/.vimrc .
cp ~/.tmux.conf .
cp ~/.xinitrc .
