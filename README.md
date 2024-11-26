# Dotfiles

My WSL Ubuntu setup with zsh, tmux and nvim.

## Install

### Ubuntu (WSL)

```bash
curl -sSfL https://raw.githubusercontent.com/mvahaste/dotfiles/main/install-ubuntu.sh | sh
```

After installing, close and reopen your terminal to configure Powerlevel10k.

Install tmux plugins with `<prefix>I` (`<prefix>` is `Space`) within tmux.

### macOS

First install brew.

```bash
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Then install the dotfiles.

```bash
curl -sSfL https://raw.githubusercontent.com/mvahaste/dotfiles/main/install-macos.sh | sh
```

## Other

### Windows Terminal

#### WSL Profile

Put the following in the `Command line` box to automatically connect to the `main` tmux session, or create it if it doesn't exist.

```
C:\WINDOWS\system32\wsl.exe -d Ubuntu -e sh -c "tmux attach -t main || tmux new -s main"
```

#### Theme

The default background color for this theme is `#1b1b1b` but I use `#000000` because I have a translucent blurred background.

```json
{
  "name": "Gruvbox Dark Hard",
  "background": "#000000",
  "foreground": "#EBDBB2",
  "black": "#1B1B1B",
  "blue": "#458588",
  "brightBlack": "#928374",
  "brightBlue": "#83A598",
  "brightCyan": "#8EC07C",
  "brightGreen": "#B8BB26",
  "brightPurple": "#D3869B",
  "brightRed": "#FB4934",
  "brightWhite": "#EBDBB2",
  "brightYellow": "#FABD2F",
  "cursorColor": "#EBDBB2",
  "cyan": "#689D6A",
  "green": "#98971A",
  "purple": "#B16286",
  "red": "#CC241D",
  "selectionBackground": "#665C54",
  "white": "#A89984",
  "yellow": "#D79921"
}
```
