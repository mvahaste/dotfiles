#!/bin/bash

# Clone dotfiles
git clone --depth 1 https://github.com/mvahaste/dotfiles.git ~/dotfiles

# System & shell utilities
brew install \
  stow \           # symlink manager for dotfiles
  zsh \            # shell
  tmux \           # terminal multiplexer
  unzip \          # archive utility

# Dev tools & languages
brew install \
  nodejs \         # JavaScript runtime
  npm \            # package manager for Node
  maven \          # Java build tool
  black \          # Python code formatter

# Terminal, text editor & CLI tools
brew install \
  alacritty \      # GPU-accelerated terminal
  neovim \         # modern Vim
  lazygit \        # terminal UI for Git
  tldr \           # simplified man pages
  fzf \            # fuzzy finder
  eza \            # modern ls replacement
  ripgrep \        # fast grep alternative
  zoxide \         # smarter cd command
  gh               # GitHub CLI

# Set up global npm directory
mkdir -p ~/.npm-global
npm config set prefix "~/.npm-global"

# Install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install deno
curl -fsSL https://deno.land/install.sh | sh

# Set git name and email
if [ $USER = "mvahaste" ]; then
  git config --global user.email "mikk.vahaste@gmail.com"
  git config --global user.name "Mikk Vahaste"
fi

# Stow dotfiles
cd ~/dotfiles && stow .
