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
