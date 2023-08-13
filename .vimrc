" basic configuration
"################################################################################

set encoding=utf-8

"快速跳转
noremap J 5j
noremap K 5k

"设置leader键为空格
let mapleader="\<Space>"

"显示行号
nnoremap snu :set number<CR>
"取消显示行号
nnoremap snm :set nonumber<CR>
"取消高亮
nnoremap snh :noh<CR>


"保存并退出
nnoremap <Leader>wq :wq<CR>
"保存并退出 但只有修改时才修改时间
nnoremap <Leader>x :x<CR>
"退出
nnoremap <Leader>q :q<CR>

set statusline+=%F "显示完整路径

"################################################################################



" plug configuation 
"################################################################################

"set rtp+=~/.vim/autoload/plug.vim
"call plug#begin()

"Plug 'Lattay/vasp.vim'
"Plug 'tommason14/lammps.vim'

"Plug 'dense-analysis/ale'
"Plug 'tpope/vim-surround'

"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'



"git url格式
"Plug 'https://ghproxy.com/https://github.com/vim-airline/vim-airline.git'
"Plug 'https://ghproxy.com/https://github.com/vim-airline/vim-airline-themes.git'
"Plug 'https://ghproxy.com/https://github.com/Lattay/vasp.vim.git'
"Plug 'https://ghproxy.com/https://github.com/tommason14/lammps.vim.git'
"Plug 'https://ghproxy.com/https://github.com/dense-analysis/ale.git'
"Plug 'https://ghproxy.com/https://github.com/tpope/vim-surround.git'

"call plug#end()

"################################################################################



" airline configuration
"let g:airline_theme='powerlineish'
"let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
"let g:airline#extensions#branch#enabled = 1

