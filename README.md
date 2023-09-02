# dotfiles

- `.zshrc` - zsh 配置文件，主要是 oh-my-zsh 的配置，以及一些 alias、PATH
- `.vimrc` - vim 配置文件
- `.gitconfig` - git 配置文件
- `.ssh/config` - gitee、github 和 gitlab 的 config 文件
- `.alias` - alias 文件，非必要
- `.condarc` - conda 配置文件，清华源
- `source-list/` - 包含 ubuntu 和 archlinux 的换源文件
- `proxywsl` - 登录WSL2时更新代理IP


下载 `.vimrc`
```bash
sh -c 'file=$HOME/.vimrc; [ -f $file ] && mv $file $file.bak; wget https://gitee.com/yangsl306/dotfiles/blob/main/.vimrc -O $file'
```

下载 `.zshrc`
```bash
sh -c 'file=$HOME/.zshrc; if [ -f $file ]; then mv $file $file.bak; fi; wget https://gitee.com/yangsl306/dotfiles/blob/main/.zshrc -O $file'
```

下载 `proxywsl`
```bash
wget https://gitee.com/yangsl306/dotfiles/blob/main/proxywsl -O $HOME/bin/proxywsl'

chmod +x $HOME/bin/proxywsl
```

