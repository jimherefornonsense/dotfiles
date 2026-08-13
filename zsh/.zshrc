export LIBRARY_PATH="$LIBRARY_PATH:$(brew --prefix)/lib"
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$ANDROID_HOME/platform-tools:$PATH"
export PATH="$HOME/zig-aarch64-macos-0.17.0-dev.690+c5a61e899:$PATH"

# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "zsh-users/zsh-autosuggestions"
plug "zdharma-continuum/fast-syntax-highlighting"
plug "zsh-users/zsh-history-substring-search"
plug "zap-zsh/supercharge"
plug "MichaelAquilina/zsh-you-should-use"
plug "agkozak/zsh-z"
eval "$(starship init zsh)" # brew install 

# Update Homebrew- and Zap-managed tools once every 24 hours. Run in the
# background so opening a new shell is not blocked.
daily_tool_update() {
  local cache_dir="${XDG_CACHE_HOME:-$HOME/.cache}/daily-tool-update"
  local timestamp_file="$cache_dir/last-run"
  local log_file="$cache_dir/update.log"
  local last_run=0

  zmodload zsh/datetime
  [[ -r "$timestamp_file" ]] && read -r last_run < "$timestamp_file"
  [[ "$last_run" == <-> ]] || last_run=0

  (( EPOCHSECONDS - last_run >= 86400 )) || return

  command mkdir -p "$cache_dir" || return
  print -r -- "$EPOCHSECONDS" >| "$timestamp_file"

  (
    local exit_code=0
    print -r -- "[$(date '+%Y-%m-%d %H:%M:%S')] Starting daily tool update"

    if command -v brew >/dev/null 2>&1; then
      brew update && brew upgrade --no-ask && brew cleanup || exit_code=$?
    fi

    if (( $+functions[zap] )); then
      zap update all || exit_code=$?
    fi

    print -r -- "[$(date '+%Y-%m-%d %H:%M:%S')] Finished with status $exit_code"
    return $exit_code
  ) </dev/null >> "$log_file" 2>&1 &!
}

daily_tool_update

# Load and initialise completion system
autoload -Uz compinit
compinit

# zsh-autosuggestions config
bindkey '^J' autosuggest-execute

# zsh-history-substring-search config
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Alias
alias vim=nvim
alias ls=eza
alias yz=yazi
# Fuzzy search
alias fzfind="find . -type f | fzf"
alias fza="alias | fzf"
