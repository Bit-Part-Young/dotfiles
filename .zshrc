# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
    git
    extract
    z
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


alias LS="ls"
alias dc="cd"
alias bk="cd ..; ls"
alias ..="cd ../..; ls"
alias cdsc="cd $HOME/scripts; ls"

alias atb="conda activate base"
alias dea="conda deactivate"

#alias vi="vim"
#alias codei="code-insiders"
#alias clo="rm -rf *.out *.err"
#alias obsd="cd /mnt/e/obsidian-md; ls"

######################################################################



# PATH
######################################################################

export PATH=$HOME/bin:$PATH

# WSL proxy config
# v2ray
#export http_proxy=http://172.0.0.1:10811
#export https_proxy=http://172.0.0.1:10811
# Clash
#export http_proxy=http://172.0.0.1:7890
#export https_proxy=http://172.0.0.1:7890
#proxywsl


######################################################################
