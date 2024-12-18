#!/bin/bash

# Clone dotfiles
git clone --depth 1 https://github.com/mvahaste/dotfiles.git ~/dotfiles

# Update Ubuntu
sudo apt update && sudo apt upgrade -y

# Install dependencies
sudo apt install -y stow zsh tmux build-essential unzip ripgrep gh nodejs npm

# Set up global npm directory
mkdir -p ~/.npm-global
npm config set prefix "~/.npm-global"

# Install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install --all --no-bash --no-fish --no-update-rc

# Install zoxide
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh

# Install tmux plugin manager
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm

# Install neovim
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux64.tar.gz
sudo rm -rf /opt/nvim
sudo tar -C /opt -xzf nvim-linux64.tar.gz

# Install lazygit
LAZYGIT_VERSION=$(curl -s "https://api.github.com/repos/jesseduffield/lazygit/releases/latest" | grep -Po '"tag_name": "v\K[^"]*')
curl -Lo lazygit.tar.gz "https://github.com/jesseduffield/lazygit/releases/latest/download/lazygit_${LAZYGIT_VERSION}_Linux_x86_64.tar.gz"
tar xf lazygit.tar.gz lazygit
sudo install lazygit /usr/local/bin

# Set git name and email
if [ $USER = "mvahaste" ]; then
  git config --global user.email "mikk.vahaste@gmail.com"
  git config --global user.name "Mikk Vahaste"
fi

# Stow dotfiles
cd ~/dotfiles && stow .

# Set zsh as default shell
sudo chsh -s "$(which zsh)" "$USER"
