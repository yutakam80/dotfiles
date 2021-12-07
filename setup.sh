#!/bin/sh
source ./config.sh

# macOS
echo "Setting macOS"
source $dotfiles_folder/.macos

# zsh
echo "Symlinking .zshrc file"
rm -rf $HOME/.zshrc
ln -s $dotfiles_folder/zsh/.zshrc $HOME/.zshrc
rm -rf $HOME/.zprofile
ln -s $dotfiles_folder/zsh/.zprofile $HOME/.zprofile

# Homebrew
echo "Installing Homebrew"
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

brew update

echo "Installing Brew packages"
brew bundle --file=homebrew/Brewfile

# Git
echo "Symlinking .gitconfig file"
rm -rf $HOME/.gitconfig
ln -s $dotfiles_folder/git/.gitconfig $HOME/.gitconfig

echo "Symlinking .gitignore file"
rm -rf $HOME/.gitignore
ln -s $dotfiles_folder/git/.gitignore $HOME/.gitignore
