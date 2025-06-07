printf '\33c\e[3J'

# This is for macOS
if [[ -f "/opt/homebrew/bin/brew" ]] then
  # If you're using macOS, you'll want this enabled
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Add Homebrew's executable directory to the front of the PATH
export PATH="/opt/homebrew/bin:$PATH"

# Add Composer to path for PHP
export PATH="$PATH:$HOME/.composer/vendor/bin"

# NPM & Nvm
# export NVM_DIR="$HOME/.nvm"
# [ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
# [ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

export NVM_DIR="$HOME/.nvm"
  [ -s "/opt/homebrew/opt/nvm/nvm.sh" ] && \. "/opt/homebrew/opt/nvm/nvm.sh"  # This loads nvm
  [ -s "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm" ] && \. "/opt/homebrew/opt/nvm/etc/bash_completion.d/nvm"  # This loads nvm bash_completion


# antigen path when using Homebrew:
source $(brew --prefix)/share/antigen/antigen.zsh

# if you installed antigen using curl:
# source /path-to-antigen/antigen.zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
# antigen bundle git
# antigen bundle heroku
# antigen bundle pip
# antigen bundle lein
# antigen bundle command-not-found
# antigen bundle common-aliases
# antigen bundle compleat
# antigen bundle git-extras
# antigen bundle git-flow
# antigen bundle npm
# antigen bundle web-search
# antigen bundle zsh-users/zsh-autosuggestions
# antigen bundle zsh-users/zsh-syntax-highlighting
# antigen bundle zsh-users/zsh-history-substring-search ./zsh-history-substring-search.zsh
# antigen bundle djui/alias-tips
# antigen bundle MichaelAquilina/zsh-you-should-use
# antigen bundle MichaelAquilina/zsh-auto-notify

# NVM bundle
# export NVM_LAZY_LOAD=true
# antigen bundle lukechilds/zsh-nvm
# antigen bundle Sparragus/zsh-auto-nvm-use

# Tell Antigen that you're done
antigen apply

# Keybindings
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# zsh History
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

 # Completion Styling
 zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
 zstyle ':completion:*' menu no
 zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls --color $realpath'
 zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls --color $realpath'

# Aliases
alias c='clear'
alias start='npm start'
alias build='npm run build'
alias run='npm run'
alias sass-dev='npm run dev'
alias prod='npm run sass-prod'
alias sass='npm run sass-dev'
alias react='npx create-react-app'
alias o='open .'
alias back='cd ..'
alias reload='source ~/.zshrc'

alias ls='eza --icons=always --git-ignore $eza_params'
alias l='eza --git-ignore $eza_params'
alias ll='eza --all --header --long $eza_params --icons'
alias llm='eza --all --header --long --sort=modified $eza_params'
alias la='eza -lbhHigUmuSa'
alias lx='eza -lbhHigUmuSa@'
alias lt='eza --icons=always --tree $eza_params'
alias tree='eza --tree $eza_params'

alias echelon='cd ~/EchelonFiles'
alias desktop='cd ~/Desktop'
alias home='cd ~/'
alias development='cd ~/Echelon/Development'
alias config='cd ~/.config'

alias gd='git diff'
alias ga='git add'
alias gc='git commit'
alias gp='git push'
alias gu='git pull'
alias gl='git log'
alias gb='git branch'
alias gi='git init'
alias gcl='git clone'


# Shell Integration
eval "$(fzf --zsh)"
eval "$(zoxide init --cmd cd zsh)"

if [ "$TERM_PROGRAM" != "Apple_Terminal" ]; then
  eval "$(oh-my-posh init zsh --config $HOME/.config/ohmyposh/base.toml)" 
  # eval "$(oh-my-posh init zsh --config 'https://raw.githubusercontent.com/JanDeDobbeleer/oh-my-posh/main/themes/kushal.omp.json')"
fi

# export PATH="$HOME/.rbenv/bin:$PATH"
# eval "$(rbenv init - zsh)"

eval "$(/opt/homebrew/bin/brew shellenv)"

export PATH="/opt/homebrew/opt/rustup/bin:$PATH"
# export PATH="/opt/homebrew/opt/postgresql@15/bin:$PATH"
# export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="/opt/homebrew/opt/openjdk/bin:$PATH"
export PATH="/Users/falconechelon/.config/herd-lite/bin:$PATH"
export PHP_INI_SCAN_DIR="/Users/falconechelon/.config/herd-lite/bin:$PHP_INI_SCAN_DIR"
export PATH=$PATH:$GOPATH/bin


