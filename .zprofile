# Amazon Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zprofile.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zprofile.pre.zsh"
eval $(/opt/homebrew/bin/brew shellenv)

# Added by Toolbox App
export PATH="$PATH:/Users/naoya/Library/Application Support/JetBrains/Toolbox/scripts"

# デフォルトのエディタをneovimに設定
export GIT_EDITOR=nvim
export VISUAL=nvim
export EDITOR=nvim

export N_PREFIX=$HOME/.n

NODE_PATH=$(which node | xargs dirname)

# neovimのgithub copilotのバージョンを固定
export NVIM_NODE=$NODE_PATH


export FZF_DEFAULT_OPTS='--height 80% --reverse --border'

# エイリアスの設定
alias emacs='nvim'
alias vim='nvim'
alias vi='nvim'
alias v='nvim'
alias edit='nvim'
alias cat='bat'

alias lg='lazygit'

alias j='z'

# デフォルトのpagerをneovimに
alias less=$(brew --prefix)opt/nvim/share/nvim/runtime/macros/less.sh

# Amazon Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zprofile.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zprofile.post.zsh"
