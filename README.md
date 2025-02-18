# Dotfiles

My development setup with zsh, tmux and neovim on macOS.

_Old WSL version [here](/WSL.md)._

## Install

### Homebrew

First install brew.

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

### Dotfiles

Then install the dotfiles.

```bash
curl -sSfL https://raw.githubusercontent.com/mvahaste/dotfiles/main/install-macos.sh | sh
```

### Powerlevel10k

After installing, close and reopen your terminal to configure Powerlevel10k.

### Plugins & Dependencies

Install tmux plugins with `<prefix>I` (`<prefix>` is `Option + Space`) within tmux.

Install mason dependencies with `:MasonToolsInstall` in neovim.

### iTerm

Add the following snippet to the "Send text at start" option in iTerm to automatically attach to or create the `main` tmux session:

```
tmux attach -t main || tmux new -s main
```
