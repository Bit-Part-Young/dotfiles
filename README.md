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
sh -c 'file=$HOME/.vim/autoload/plug.vim; folder=$(dirname $file); [ -d $folder ] && [ -f $file ] && cp $file $file.bak || mkdir -p $folder; wget https://gitee.com/yangsl306/dotfiles/raw/main/.vim/autoload/plug.vim -O $file'

sh -c 'file=$HOME/.vimrc; [ -f $file ] && mv $file $file.bak; wget https://gitee.com/yangsl306/dotfiles/raw/main/.vimrc -O $file'
```

下载 `.zshrc`
```bash
sh -c 'file=$HOME/.zshrc; if [ -f $file ]; then mv $file $file.bak; fi; wget https://gitee.com/yangsl306/dotfiles/raw/main/.zshrc -O $file'
```

下载 `proxywsl`

在 `~/.bashrc` 或 `~/.zshrc` 中添加以下命令，
将 `10801` 改成你所使用的代理软件的局域网端口号（需开启**允许来自局域网的连接**），
后source。
```bash
# proxy
export http_proxy=http://172.27.144.1:10811
export https_proxy=http://172.27.144.1:10811
proxywsl
```


```bash
wget https://gitee.com/yangsl306/dotfiles/raw/main/proxywsl -O $HOME/bin/proxywsl

chmod +x $HOME/bin/proxywsl
```

