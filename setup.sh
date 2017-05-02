#!/usr/bin/env bash

# Remove files we're gonna replace
rm ~/.bashrc
rm ~/.gitconfig
rm ~/.gitignore_global
rm ~/.profile
rm ~/.zshrc
rm ~/.atom/config.cson

# Symlink files from this repo to those locations
ln -s ~/dotfiles/.bashrc ~/.bashrc
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.gitignore_global ~/.gitignore_global
ln -s ~/dotfiles/.profile ~/.profile
ln -s ~/dotfiles/.zshrc ~/.zshrc
ln -s ~/dotfiles/kim.zsh-theme ~/.oh-my-zsh/themes/kim.zsh-theme
ln -s ~/dotfiles/atom-config.cson ~/.atom/config.cson

# Install Atom packages
apm install --packages-file ~/dotfiles/atom-packages.list

# Run macOS configuration script
source ~/dotfiles/macos-config.sh
