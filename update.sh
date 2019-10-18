#!/bin/sh

find . -not -path "**/.git/*" -not -name ".git" -not -path "./update.sh" -delete

mkdir -p ssh

cp -r ~/.config/polybar .
cp -r ~/.config/bspwm .
cp -r ~/.config/sxhkd .
cp -r ~/.config/alacritty .
cp -r ~/.config/fish .
cp -r ~/.config/gtk-3.0 .

cp ~/.config/compton.conf .

cp ~/.ssh/config ssh/

cp ~/.vimrc .
cp ~/.tmux.conf .
cp ~/.xinitrc .
cp ~/.gtkrc-2.0 .
