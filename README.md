# dotfiles

- `.zshrc` - zsh 配置文件，主要是 oh-my-zsh 的配置，以及一些 alias、PATH
- `.vimrc` - vim 配置文件
- `.gitconfig` - git 配置文件
- `.ssh/config` - gitee、github 和 gitlab 的 config 文件
- `.alias` - alias 文件，非必要
- `.condarc` - conda 配置文件，清华源
- `source-list/` - 包含 ubuntu 和 archlinux 的换源文件


单独下载 `.vimrc` 和 `.zshrc`
```bash
sh -c 'file=$HOME/.vimrc; if [ -f $file ]; then mv $file $file.bak; fi; wget -O $file https://gitee.com/yangsl306/dotfiles/blob/main/.vimrc'

sh -c 'file=$HOME/.zshrc; if [ -f $file ]; then mv $file $file.bak; fi; wget -O $file https://gitee.com/yangsl306/dotfiles/blob/main/.zshrc'
```

