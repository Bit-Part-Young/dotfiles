# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
    git
    extract
    cp
    z
    safe-paste
    colored-man-pages
    web-search
    copypath
    python
    autopep8
    colorize
    zsh-syntax-highlighting
    zsh-autosuggestions
    zsh-completions
)

source $ZSH/oh-my-zsh.sh



# alias
######################################################################


# with default zsh shell
#alias ls='lsd'
# zsh to get zsh shell
#if [ -x "$(command -v lsd)" ]; then
#  alias ls='lsd'
#fi

alias dc="cd"
alias LS="ls"
alias bk="cd ..; ls"
alias ..="cd ../..; ls"
alias cdsc="cd $HOME/scripts; ls"

alias atb="conda activate base_ysl"
alias dea="conda deactivate"

#alias vi="vim"
#alias cdbp="cd $HOME/src/miniconda3/envs/base_ysl/lib/python3.11/site-packages/"
#alias codei="code-insiders"
#alias clo="rm -rf *.out *.err"
#alias obsd="cd /mnt/e/obsidian-md; ls"

######################################################################



# PATH
######################################################################

export PATH=$HOME/bin:$PATH

# proxy
# v2ray
#export http_proxy=http://172.0.0.1:10811
#export https_proxy=http://172.0.0.1:10811
# Clash
#export http_proxy=http://172.0.0.1:7890
#export https_proxy=http://172.0.0.1:7890
#proxywsl


######################################################################




