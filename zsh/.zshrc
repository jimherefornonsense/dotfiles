export LIBRARY_PATH="$LIBRARY_PATH:$(brew --prefix)/lib"
export ANDROID_HOME="$HOME/Library/Android/sdk"
export PATH="$ANDROID_HOME/platform-tools:$PATH"

# Created by Zap installer
[ -f "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh" ] && source "${XDG_DATA_HOME:-$HOME/.local/share}/zap/zap.zsh"
plug "Aloxaf/fzf-tab"
plug "zsh-users/zsh-autosuggestions"
plug "zdharma-continuum/fast-syntax-highlighting"
plug "zap-zsh/supercharge"
plug "MichaelAquilina/zsh-you-should-use"
plug "agkozak/zsh-z"
eval "$(starship init zsh)" # brew install 

# Load and initialise completion system
autoload -Uz compinit
compinit

# Alias
alias vim=nvim
alias ls=eza
# Fuzzy search
alias fzfind="find . -type f | fzf"
alias fza="alias | fzf"
