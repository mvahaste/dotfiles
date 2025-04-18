#!/bin/bash

# Clone dotfiles
git clone --depth 1 https://github.com/mvahaste/dotfiles.git ~/dotfiles

brew install \
  stow \                            # symlink manager for dotfiles
  zsh \                             # shell
  tmux \                            # terminal multiplexer
  unzip \                           # archive utility
  nodejs \                          # javascript runtime
  npm \                             # package manager for node
  maven \                           # java build tool
  black \                           # python code formatter
  gh                                # github CLI
  iterm2 \                          # my preferred macOS terminal emulator
  neovim \                          # modern Vim
  lazygit \                         # terminal UI for Git
  tldr \                            # simplified man pages
  fzf \                             # fuzzy finder
  eza \                             # modern ls replacement
  ripgrep \                         # fast grep alternative
  zoxide \                          # smarter cd command
  font-jetbrains-mono \             # jetbrains mono font
  font-jetbrains-mono-nerd-font \   # nerd font version of jetbrains mono

# Tiling window manager
brew install --cask nikitabobko/tap/aerospace

# Set up global npm directory
mkdir -p ~/.npm-global
npm config set prefix "~/.npm-global"

# Install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install deno
curl -fsSL https://deno.land/install.sh | sh

# Set git name and email
if [ $USER = "mvahaste" ]; then
  git config --global user.email "mvahaste@proton.me"
  git config --global user.name "Mikk Vahaste"
fi

# Stow dotfiles
cd ~/dotfiles && stow .
