#!/bin/bash

# Clone dotfiles
git clone --depth 1 https://github.com/mvahaste/dotfiles.git ~/dotfiles

# Install dependencies
brew install stow zsh tmux unzip ripgrep gh nodejs npm neovim lazygit zoxide fzf glow pngpaste

# Set up global npm directory
mkdir -p ~/.npm-global
npm config set prefix "~/.npm-global"

# Install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Set git name and email
if [ $USER = "mvahaste" ]; then
  git config --global user.email "mikk.vahaste@gmail.com"
  git config --global user.name "Mikk Vahaste"
fi

# Stow dotfiles
cd ~/dotfiles && stow .
