#!/bin/bash

# Clone dotfiles
git clone --depth 1 https://github.com/mvahaste/dotfiles.git ~/dotfiles

brew install \
  stow \                            # symlink manager for dotfiles
  zsh \                             # shell
  tmux \                            # terminal multiplexer
  unzip \                           # archive utility
  nvm \                             # node version manager
  yarn \                            # package manager
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
  btop \                            # fancy htop

# Install fonts
brew install \
  font-lora \                       # a nice looking serif font
  font-jetbrains-mono \             # jetbrains mono font
  font-jetbrains-mono-nerd-font \   # nerd font version of jetbrains mono
  font-cascadia-code \              # cascadia code font
  font-cascadia-code-nf \           # nerd font version of cascadia code
  font-atkinson-hyperlegible \      # atkinson hyperlegible font, I am blind
  font-atkinson-hyperlegible-mono \ # mono version of atkinson hyperlegible

# Tiling window manager
brew install --cask nikitabobko/tap/aerospace

# Install node
nvm install --lts

# Install global npm packages
npm install -g @vue/language-server
npm install -g @vue/typescript-plugin

# Install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Set git name and email
if [ $USER = "mvahaste" ]; then
  git config --global user.email "mvahaste@proton.me"
  git config --global user.name "Mikk Vahaste"
fi

# Stow dotfiles
cd ~/dotfiles && stow .
