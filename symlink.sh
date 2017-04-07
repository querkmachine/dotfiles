#!/usr/bin/env bash

rm ~/.bashrc
rm ~/.gitconfig
rm ~/.gitignore_global 
rm ~/.zshrc
rm ~/.profile

ln -s ~/dotfiles/bashrc ~/.bashrc 
ln -s ~/dotfiles/gitconfig ~/.gitconfig 
ln -s ~/dotfiles/gitignore_global ~/.gitignore_global 
ln -s ~/dotfiles/kim.zsh-theme ~/.oh-my-zsh/themes/kim.zsh-theme 
ln -s ~/dotfiles/zshrc ~/.zshrc 
ln -s ~/dotfiles/profile ~/.profile 