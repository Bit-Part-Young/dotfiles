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

"Plug 'preservim/nerdtree'

"Plug 'preservim/nerdcommenter'

"Plug 'lifepillar/vim-solarized8'

"Plug 'easymotion/vim-easymotion'

"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'

"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'



"git url格式
"Plug 'https://ghproxy.com/https://github.com/vim-airline/vim-airline.git'
"Plug 'https://ghproxy.com/https://github.com/vim-airline/vim-airline-themes.git'

"Plug 'https://ghproxy.com/https://github.com/Lattay/vasp.vim.git'
"Plug 'https://ghproxy.com/https://github.com/tommason14/lammps.vim.git'

"Plug 'https://ghproxy.com/https://github.com/dense-analysis/ale.git'

"Plug 'https://ghproxy.com/https://github.com/tpope/vim-surround.git'

"Plug 'https://ghproxy.com/https://github.com/preservim/nerdtree.git'

"Plug 'https://ghproxy.com/https://github.com/preservim/nerdcommenter.vim.git'

"Plug 'https://ghproxy.com/https://github.com/lifepillar/vim-solarized8.vim.git'

"Plug 'https://ghproxy.com/https://github.com/easymotion/vim-easymotion.vim.git'

"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'https://ghproxy.com/https://github.com/junegunn/fzf.vim.vim.git'

"call plug#end()

"################################################################################



" specific vim plugins configurations
"################################################################################

" airline configuration
"let g:airline_theme='powerlineish'
"let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
"let g:airline#extensions#branch#enabled = 1


" NERDTree configuration
" Start NERDTree and put the cursor back in the other window.
"autocmd VimEnter * NERDTree | wincmd p
"nnoremap <leader>n :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTree<CR>
"nnoremap <C-t> :NERDTreeToggle<CR>
"nnoremap <C-f> :NERDTreeFind<CR>


" nerdcommenter configuration
"let g:NERDSpaceDelims = 0 " 在注释符号后加一个空格
"let g:NERDCompactSexyComs = 1 " 紧凑排布多行注释
"let g:NERDDefaultAlign = 'left' " 逐行注释左对齐
"let g:NERDAltDelims_java = 1 " JAVA 语言使用默认的注释符号
"let g:NERDCustomDelimiters = {'c': {'left': '/*', 'right': '*/'}} " C 语言注释符号
"let g:NERDCustomDelimiters = {'sh': { 'left': '# ', 'right': ''}} " shell 注释符号
"let g:NERDCommentEmptyLines = 0 " 允许空行注释
"let g:NERDTrimTrailingWhitespace = 1 " 取消注释时删除行尾空格
"let g:NERDToggleCheckAllLines = 1 " 检查选中的行操作是否成功
"let g:solarized_termtrans = 1 " 使用 termnal 背景
"let g:solarized_visibility = "high" " 使用 :set list 显示特殊字符时的高亮级别


" solarized8 configuration
"set background=dark
"colorscheme solarized8
"colorscheme solarized8_flat


" easymotion configuration
"map <Leader> <Plug>(easymotion-prefix)


" ale configuration
"let g:ale_linters={'python': ['pylint']}

"################################################################################



