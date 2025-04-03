# Add deno completions to search path
if [[ ":$FPATH:" != *":/Users/mvahaste/.zsh/completions:"* ]]; then export FPATH="/Users/mvahaste/.zsh/completions:$FPATH"; fi
# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Fix terminal colors
# export TERM="screen-256color-bce"

# Add to path
export PATH="$HOME/.local/bin:$PATH"
export PATH="$PATH:/opt/nvim-linux64/bin"
export PATH="$PATH:~/.npm-global/bin"
export PATH="$PATH:/Users/mvahaste/.spicetify"
export PATH="$PATH:/Users/mvahaste/Gradle/gradle-8.5/bin"

# Set zinit and plugins directory
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

# Download zinit if it doesn't exist
if [ ! -d "$ZINIT_HOME" ]; then
	mkdir -p "$(dirname $ZINIT_HOME)"
	git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

# Source zinit
source "${ZINIT_HOME}/zinit.zsh"

# Add Powerlevel10k
zinit ice depth=1; zinit light romkatv/powerlevel10k

# Add zsh plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Add snippets
zinit snippet OMZP::git
zinit snippet OMZP::sudo
zinit snippet OMZP::command-not-found

# Load completions
autoload -U compinit && compinit

zinit cdreplay -q

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Keybindings
bindkey -e
bindkey "^p" history-search-backward
bindkey "^n" history-search-forward

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUP=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Completion styling
zstyle ":completion:*" matcher-list "m:{a-z}={A-Za-z}"
zstyle ":completion:*" list-colors "${(s.:.)LS_COLORS}"
zstyle ":completion:*" menu no
zstyle ":fzf-tab:complete:cd:*" fzf-preview "ls --color $realpath"

# Aliases
alias ls="ls --color"
alias n="nvim"
alias lg="lazygit"

# Functions
# Compile and run C++ files
function crcpp() {
  if [ -z "$1" ] || [ "$1" = "-h" ]; then
    echo "Compile and run C++ files"
    echo "Usage: crcpp <filename> <args>"
    return 1
  fi

  clang++ $1.cpp -o $1

  if [ $? -eq 0 ]; then
    ./$1 "${@:2}"
  fi
}

# Compile and run Java files
function crjava() {
  if [ -z "$1" ] || [ "$1" = "-h" ]; then
    echo "Compile and run Java files"
    echo "Usage: crjava <filename> <args>"
    return 1
  fi

  javac $1

  if [ $? -eq 0 ]; then
    java $1 "${@:2}"
  fi
}

# Rename directories to "Chapter XXX" format
function rename_chapters() {
  if [ -z "$1" ] || [ "$1" = "-h" ]; then
    echo "Rename directories to 'Chapter XXX' format"
    echo "Usage: rename_chapters <directory> [padding_length]"
    return 1
  fi

  local dir="$1"
  local padding_length="${2:-3}"

  if [ ! -d "$dir" ]; then
    echo "ERROR: Directory '$dir' does not exist."
    return 1
  fi

  for d in "$dir"/*/; do
    local dir_name="${d%/}"
    local base_name=$(basename "$dir_name")

    # Extract last occurring number 
    local chapter_number=$(echo "$base_name" | grep -o '[0-9]\+' | tail -n 1)

    # Check if chapter number is found
    if [ -z "$chapter_number" ]; then
      echo "SKIPPING: '$base_name' (no number found)"
      continue
    fi

    # Check if chapter number is valid
    local formatted_chapter_number=$(printf "%0${padding_length}d" "$chapter_number")
    local new_dir_name="$dir/Chapter $formatted_chapter_number"

    # Check if the directory is already in the desired format
    if [ "$dir_name" = "$new_dir_name" ]; then
      echo "SKIPPING: '$base_name' (already formatted)"
      continue
    fi

    # Check if the target directory already exists
    if [ -d "$new_dir_name" ]; then
      echo "ERROR: Target directory '$new_dir_name' already exists. Skipping '$base_name'."
      continue
    fi

    # Rename the directory
    echo "RENAMING: '$base_name' -> 'Chapter $formatted_chapter_number'"
    mv "$dir_name" "$new_dir_name" || echo "ERROR: Failed to rename '$base_name'"
  done
}

# Shell integrations
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
eval "$(zoxide init --cmd cd zsh)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
. "/Users/mvahaste/.deno/env"

