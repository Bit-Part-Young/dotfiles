# dotfiles

Config files in Linux.

- `.zshrc` - zsh 配置文件
- `.vimrc` - vim 配置文件
- `.inputrc` - tab 补全忽略大小写设置
- `.gitconfig` - git 配置文件；需修改 `name` 和 `email`
- `.ssh/config` - gitee、github 和 gitlab 的 config 文件
- `config` - 远程服务器的 config 文件
- `.condarc` - conda 配置文件，清华镜像源
- `source.list` - Ubuntu 源文件
- `mirrorlist` - Arch Linux 源文件
- `proxywsl` - 登录 WSL 2 时自动更新代理 IP
- `clash.service` - 代理软件 Clash 的 systemd 服务文件，将其复制到 `/etc/systemd/system/`
- `*settings.json` - VSCode 配置文件

---

## 使用

```bash
git clone https://gitee.com/yangsl306/dotfiles.git

# 拷贝所需的配置文件
```

---

### 下载 `.vimrc`

- 复制以下命令，下载插件管理器 `Plug` 和 `.vimrc`
- 进入 `.vimrc`，取消 `Plug` 的相关注释行，退出重新进入，输入 `:PlugInstall` 安装插件
- 退出重新进入，取消相关插件配置的注释

```bash
sh -c 'file=~/.vim/autoload/plug.vim; folder=$(dirname ${file}); [ -d ${folder} ] && [ -f $file ] && cp ${file} ${file}.bak || mkdir -p ${folder}; wget https://gitee.com/yangsl306/dotfiles/raw/main/.vim/autoload/plug.vim -O ${file}'

sh -c 'file=~/.vimrc; [ -f $file ] && mv ${file} ${file}.bak; wget https://gitee.com/yangsl306/dotfiles/raw/main/.vimrc -O ${file}'
```

---

### 下载 `.zshrc`

```bash
sh -c 'file=~/.zshrc; [ -f $file ] && mv ${file} ${file}.bak; wget https://gitee.com/yangsl306/dotfiles/raw/main/.zshrc -O ${file}'
```

---

### 下载 `proxywsl`

- 在 `~/.bashrc` 或 `~/.zshrc` 中添加以下命令设置代理，将 `10801` 改成你所使用的代理软件的局域网端口号（需开启**允许来自局域网的连接**）
- `10811` 通常为 v2ray 的 端口号，`7890`  通常为 Clash 的 端口号

```bash
# WSL 2 proxy config
export http_proxy=http://172.27.144.1:10811
export https_proxy=http://172.27.144.1:10811
proxywsl
```

- 复制以下命令，下载 `proxywsl`，`source` 使其生效

```bash
file=~/bin/proxywsl
wget https://gitee.com/yangsl306/dotfiles/raw/main/proxywsl -O ${file}
chmod +x ${file}
```
