#---------------------    alias    ----------------------------

alias mv="mv -v"
alias cp="cp -v"
alias ln="ln -v"
alias rm="rm -v"

alias LS="ls"
# alias ls="lsd -v"
# alias ll="ls -lh -g --header"
# alias la="ls -lAh -g --header"

alias ..="cd ..; ls"
alias ...="cd ../..; ls"

alias cdsc="cd ~/scripts; ls"
alias cdsr="cd ~/src; ls"
alias cdy="cd ~/yangsl; ls"
alias cdyw="cd ~/yangsl/work; ls"

alias atb="conda activate base_ysl"
alias ate="conda activate atomate_env"
alias dea="conda deactivate"

alias codei="code-insiders"

alias q="squeue"
alias clo="rm -rf *.out *.err"

alias setlocalproxy='
    export https_proxy=http://127.0.0.1:17890 http_proxy=http://127.0.0.1:17890 all_proxy=socks5://127.0.0.1:17890
'

# alias vi="nvim"

# alias fzf='fzf --preview "bat --color=always --style=numbers --line-range=:500 {}"'

#---------------------    PATH    ----------------------------

export PATH=${HOME}/yangsl/bin:$PATH
export PATH=${HOME}/yangsl/local/bin:$PATH

export RUSTUP_HOME=${HOME}/yangsl/.rustup
export CARGO_HOME=${HOME}/yangsl/.cargo

# export FW_CONFIG_FILE=${HOME}/yangsl/opt/atomate_env/config/FW_config.yaml
