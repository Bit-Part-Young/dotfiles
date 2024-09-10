# dotfiles

Config files in Linux.

```bash
.zshrc               # zsh 配置文件
.vimrc               # vim 配置文件
.inputrc             # Tab 补全忽略大小写设置
.gitconfig           # Git 配置文件；需修改 `name` 和 `email`
.ssh/config          # GitHub、Gitee 和 GitLab 的 SSH config 文件
config               # 远程服务器的 config 文件
.condarc             # Conda 配置文件，清华镜像源
source.list          # Ubuntu 源文件
mirrorlist           # Arch Linux 源文件
proxywsl             # 登录 WSL 2 时自动更新代理 IP
clash.service        # Clash 的 systemd 服务文件
*settings.json       # VSCode 配置文件
```

---

## 使用

```bash
# 克隆
git clone --depth 1 https://gitee.com/yangsl306/dotfiles.git

# 若已有相应文件，请备份后再使用 ！！！

# .vimrc 使用
cp -r .vim .vimrc ~

# .zshrc 使用
cp .zshrc ~

# proxywsl 使用
cp proxywsl ~/bin
chmod +x ~/bin/proxywsl

# 将 port 改为你使用的代理软件的局域网端口号（需开启 允许来自局域网的连接）
# v2ray: 10811，Clash: 7890
export http_proxy=http://ip:port
export https_proxy=http://ip:port
proxywsl

source ~/.zshrc

# clash.service 使用
sudo cp clash.service /etc/systemd/system
```

---

### 下载 `.vimrc`

- 复制以下命令，下载插件管理器 `Plug` 和 `.vimrc`
- 进入 `.vimrc`，取消 `Plug` 的相关注释行，退出重新进入，输入 `:PlugInstall` 安装插件
- 退出重新进入，取消相关插件配置的注释
