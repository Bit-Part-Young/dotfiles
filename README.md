# dotfiles

Linux Configuration Files (Personal Use).

```bash
.vimrc               # vim 配置文件
.vim/                # vim 插件设置；Plug 插件管理器
.inputrc             # Tab 补全忽略大小写设置
.zshrc               # zsh 配置文件
.gitconfig           # Git 配置文件；需修改 `name` 和 `email`
.ssh/config          # GitHub、Gitee 和 GitLab 的 SSH config 文件
.condarc             # Conda 配置文件，清华镜像源
vscode/              # VSCode 配置文件；含 通用设置、Vim、LateX Workshop、PicGo 插件设置
source.list          # Ubuntu 源文件；更换国内源
mirrorlist           # Arch Linux 源文件；更换国内源
proxywsl             # 登录 WSL 2 时自动更新代理 IP
clash.service        # Clash 的 systemd 服务文件
```

---

## 使用

```bash
# 克隆仓库
git clone --depth 1 https://gitee.com/yangsl306/dotfiles.git

# 若已有相应文件，请备份后再使用 ！！！

# .vimrc 使用
cp -r .vim .vimrc ~
# 打开 ~/.vimrc，取消 Plug 的相关注释行，退出重新打开，输入 :PlugInstall 安装插件
# 退出重新打开，取消相关插件配置的注释

# .zshrc 使用
cp .zshrc ~

# .inputrc 使用
cp .inputrc ~

# .gitconfig 使用
cp .gitconfig ~

# .ssh/config 使用
cp .ssh/config ~/.ssh
# 若已有 ~/.ssh/config 文件
cat .ssh/config >> ~/.ssh/config

# .condarc 使用
cp .condarc ~

# vscode/*settings.json 使用
# 将 *settings.json 文件内容根据需求拷贝到 VSCode 的 settings.json 中

# source.list 使用
# 备份
sudo cp /etc/apt/sources.list /etc/apt/sources.list.bak
# 替换
sudo cp source.list /etc/apt/sources.list

# mirrorlist 使用
# 备份
sudo cp /etc/pacman.d/mirrorlist /etc/pacman.d/mirrorlist.bak
# 替换
sudo cp mirrorlist /etc/pacman.d/mirrorlist

# proxywsl 使用
cp proxywsl ~/bin
chmod +x ~/bin/proxywsl
# 在 ~/.{bash,zsh}rc 中添加以下内容，source 使其生效
# 将 port 改为你使用的代理软件的局域网端口号（需开启 “允许来自局域网的连接”）
# V2Ray: 10811，Clash: 7890
export http_proxy=http://ip:port
export https_proxy=http://ip:port
proxywsl

# clash.service 使用
sudo cp clash.service /etc/systemd/system
```
