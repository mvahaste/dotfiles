# Dotfiles

My development setup with zsh, tmux and nvim on macOS.

Old WSL version located [here](/WSL.md).

## Install

First install brew.

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Then install the dotfiles.

```bash
curl -sSfL https://raw.githubusercontent.com/mvahaste/dotfiles/main/install-macos.sh | sh
```

After installing, close and reopen your terminal to configure Powerlevel10k.

Install tmux plugins with `<prefix>I` (`<prefix>` is `Option + Space`) within tmux.
