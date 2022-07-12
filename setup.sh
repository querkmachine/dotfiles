#!/usr/bin/env bash

# Remove files we're gonna replace
rm ~/.gitconfig
rm ~/.gitignore_global
rm ~/.p10k.zsh
rm ~/.profile
rm ~/.zshrc

# Symlink files from this repo to those locations
ln -s ~/dotfiles/.gitconfig ~/.gitconfig
ln -s ~/dotfiles/.gitignore_global ~/.gitignore_global
ln -s ~/dotfiles/.p10k.zsh ~/.p10k.zsh
ln -s ~/dotfiles/.profile ~/.profile
ln -s ~/dotfiles/.zshrc ~/.zshrc

# Run macOS configuration script
source ~/dotfiles/macos-config.sh
