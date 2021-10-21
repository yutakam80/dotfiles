#!/bin/sh
source ./config.sh

# macOS
echo "Setting macOS"
source $dotfiles_folder/.macos

# Homebrew
echo "Installing Homebrew"
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

brew update

echo "Installing Brew packages"
brew bundle --file=homebrew/Brewfile

# zsh
echo "Symlinking .zshrc file"
rm -rf $HOME/.zshrc
ln -s $dotfiles_folder/zsh/.zshrc $HOME/.zshrc

# Git
echo "Symlinking .gitconfig file"
rm -rf $HOME/.gitconfig
ln -s $dotfiles_folder/git/.gitconfig $HOME/.gitconfig

echo "Symlinking .gitignore file"
rm -rf $HOME/.gitignore
ln -s $dotfiles_folder/git/.gitignore $HOME/.gitignore

# karabiner
echo "Symlinking karabiner.json file"
rm -f $HOME/.config/karabiner/karabiner.json
ln -s $dotfiles_folder/karabiner/karabiner.json $HOME/.config/karabiner/karabiner.json

chsh -s /usr/local/bin/zsh