export ZSH="~/.oh-my-zsh"

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

#alias ls="lsd"
alias LS="ls"
alias bk="cd ..; ls"
alias ..="cd ../..; ls"
alias cdsc="cd ~/scripts; ls"
alias cdsr="cd ~/src; ls"
#alias obsd="cd ~/scripts/obsidian-md; ls"

alias atb="conda activate base"
alias dea="conda deactivate"

alias codei="code-insiders"

#alias clo="rm -rf *.out *.err"

######################################################################


# PATH
######################################################################

export PATH=~/bin:$PATH

######################################################################
