# dotfiles

- `.zshrc` - zsh 配置文件，主要是 oh-my-zsh 的配置，以及一些 alias、PATH
- `.vimrc` - vim 配置文件
- `.gitconfig` - git 配置文件
- `.ssh/` - ssh 配置文件，主要是为 gitee 和 github ssh 免密 的 config 文件设置
- `.alias` - alias 别名文件，必要性不是很大
- `.condarc` - conda 配置文件，主要为更换的清华源 channel source
- `source-list/` - 包含 ubuntu 和 archlinux 的换源文件


单独下载 `.vimrc` 和 `.zshrc`
```bash
sh -c 'file=$HOME/.vimrc; if [ -f $file ]; then mv $file $file.bak; fi; wget -O $file https://gitee.com/yangsl306/dotfiles/blob/main/.vimrc'

sh -c 'file=$HOME/.zshrc; if [ -f $file ]; then mv $file $file.bak; fi; wget -O $file https://gitee.com/yangsl306/dotfiles/blob/main/.zshrc'
```

