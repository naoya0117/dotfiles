# Amazon Q pre block. Keep at the top of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zprofile.pre.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zprofile.pre.zsh"
eval $(/opt/homebrew/bin/brew shellenv)

[[ -f "${HOME}/.profile.secret" ]] && source "${HOME}/.profile.secret"

# Added by Toolbox App
export PATH="$PATH:/Users/naoyamatuhashi/Library/Application Support/JetBrains/Toolbox/scripts"
export XDG_CONFIG_HOME="$HOME/.config"

# デフォルトのエディタをneovimに設定
export GIT_EDITOR=nvim
export VISUAL=nvim
export EDITOR=nvim

export N_PREFIX=$HOME/.n

# neovimのgithub copilotのバージョンを固定
export NVIM_NODE=$(which node | xargs dirname)

export FZF_DEFAULT_OPTS='--height 80% --reverse --border'

# エイリアスの設定
alias emacs='nvim'
alias vim='nvim'
alias vi='nvim'
alias edit='nvim'
alias cat='bat'

alias lg='lazygit'

alias j='z'

# デフォルトのpagerをneovimに
alias less=$(brew --prefix nvim)/share/nvim/runtime/scripts/less.sh

# Amazon Q post block. Keep at the bottom of this file.
[[ -f "${HOME}/Library/Application Support/amazon-q/shell/zprofile.post.zsh" ]] && builtin source "${HOME}/Library/Application Support/amazon-q/shell/zprofile.post.zsh"

# Setting PATH for Python 3.10
# The original version is saved in .zprofile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.10/bin:${PATH}"
export PATH
