#############    oh-my-zsh    #############
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
    git
    extract
    z
    # fzf-tab
    zsh-syntax-highlighting
    zsh-autosuggestions
    zsh-completions
    you-should-use
    zsh-vi-mode
    fast-syntax-highlighting
)

# FPATH="/opt/homebrew/share/zsh/site-functions:${FPATH}

source $ZSH/oh-my-zsh.sh


#############    alias    #############

alias mv="mv -v"
alias cp="cp -v"
alias ln="ln -v"

alias LS="ls"

alias ..="cd ..; ls"
alias ...="cd ../..; ls"


##########   可选   ##########
# alias ls="lsd"
# alias vi="nvim"
# alias codei="code-insiders"
# alias fzf='fzf --preview "bat --color=always --style=numbers --line-range=:500 {}"'

# alias cdsc="cd $HOME/scripts; ls"
# alias cdsr="cd $HOME/src; ls"
# alias obsd="cd $HOME/scripts/obsidian-md; ls"

# alias atb="conda activate base"
# alias dea="conda deactivate"

# alias glb="glola"
# alias gld="glols"

# alias clo="rm -rf *.out *.err"


#############    PATH    #############

export PATH=$HOME/bin:$PATH

########## 可选 ##########
# Homebrew 设置
export PATH=/opt/homebrew/bin:$PATH
# 交大镜像
export HOMEBREW_BREW_GIT_REMOTE=https://mirrors.sjtug.sjtu.edu.cn/git/brew.g
export HOMEBREW_CORE_GIT_REMOTE=https://mirrors.sjtug.sjtu.edu.cn/git/homebr
export HOMEBREW_BOTTLE_DOMAIN=https://mirror.sjtu.edu.cn/homebrew-bottles/bo

# go 设置
export GOPROXY=https://goproxy.cn,direct
export PATH=$(go env GOPATH)/bin:$PATH



#############    ELSE    #############
########## 可选 ##########
# fzf-tab 设置
## # disable sort when completing `git checkout`
## zstyle ':completion:*:git-checkout:*' sort false
## # set descriptions format to enable group support
## # NOTE: don't use escape sequences here, fzf-tab will ignore them
## zstyle ':completion:*:descriptions' format '[%d]'
## # set list-colors to enable filename colorizing
## zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
## # force zsh not to show completion menu, which allows fzf-tab to capture the unambiguous prefix
## zstyle ':completion:*' menu no
## # preview directory's content with eza when completing cd
## zstyle ':fzf-tab:complete:cd:*' fzf-preview 'eza -1 --color=always $realpath'
## # switch group using `<` and `>`
## zstyle ':fzf-tab:*' switch-group '<' '>'
