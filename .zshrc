# History configuration
HISTFILE=~/.zsh_history
HISTSIZE=10000
SAVEHIST=10000
setopt appendhistory
setopt INC_APPEND_HISTORY
setopt SHARE_HISTORY
setopt HIST_EXPIRE_DUPS_FIRST
setopt HIST_IGNORE_DUPS
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS


# Use modern completion system
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

# Auto suggestions (make sure zsh-autosuggestions is installed)
source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_STRATEGY=(history completion)
ZSH_AUTOSUGGEST_BUFFER_MAX_SIZE=20
ZSH_AUTOSUGGEST_USE_ASYNC=1
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#999999'

# Syntax highlighting (make sure zsh-syntax-highlighting is installed)
source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh/zsh-history-substring-search/zsh-history-substring-search.zsh
source ~/.zsh/fzf-tab/fzf-tab.zsh
source ~/.zsh/zsh-completions/zsh-completions.plugin.zsh
# Key bindings
WORDCHARS=${WORDCHARS//\//}
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down
bindkey '^ ' autosuggest-accept
plugins=(
  zsh-autosuggestions
  git
  zsh-syntax-highlighting
  fzf-tab
  asdf
)
# zsh auto completions

# Basic auto/tab completion
autoload -U compinit
zstyle ':completion:*' menu select
zmodload zsh/complist
compinit
_comp_options+=(globdots) # Include hidden files
# removes underline path
(( ${+ZSH_HIGHLIGHT_STYLES} )) || typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[path]=none
ZSH_HIGHLIGHT_STYLES[path_prefix]=none

# autosuggest configs
bindkey '$' autosuggest-accept
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=#9e9e9e'

# Load your existing PATH configurations
export VK_ICD_FILENAMES=/usr/share/vulkan/icd.d/nvidia_icd.x86_64.json
export VK_LAYER_PATH=/usr/share/vulkan/layer.d
export PATH="$HOME/.local/share/solana/install/active_release/bin:$PATH"
export PATH=$PATH:~/go/bin
export PATH=$PATH:/usr/local/go/bin
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="/root/.bun/bin:$PATH"
path+=("$HOME/.cargo/bin")
# Environment variables
export ANDROID_HOME="/home/sam/Android/Sdk/"
export PATH="$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools"
export DOCKER_CONTEXT=desktop-linux
export PNPM_HOME="/home/sam/.local/share/pnpm"
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export WALLET_JSON="$(cat ~/Documents/wallety.json)"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Your existing aliases (keep all of them)
alias cat='bat'
alias q="exit"
alias l="ls -lah"
alias gcl="git clone"
alias gp="git push -u origin main"
alias ga="git add"
alias gc="git commit -m"
alias repo="gh repo create --public"
alias conf="cd ~/.config/"
alias proj="cd ~/Projects/ && nvim ."
alias nivm="nvim"
alias nivn="nvim"
alias nvin="nvim"
alias vnim="nvim"
alias vim="nvim"
alias py="python3"
alias i='sudo dnf install'
alias list="gh repo list"
alias run="bun run dev"

# Add your existing tool configurations
[ -s "/home/sam/.bun/_bun" ] && source "/home/sam/.bun/_bun"
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"
. "/home/sam/.starkli/env"


export PATH="$HOME/.local/share/solana/install/active_release/bin:$PATH"
export PATH="$HOME/.local/share/solana/install/active_release/bin:$PATH"
export PATH="$HOME/.local/share/solana/install/active_release/bin:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"

eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/zen.toml)"
# Initialize Starship
# eval "$(starship init zsh)"
