" reference: https://github.com/amix/vimrc


" basic configuration
"################################################################################

set t_Co=256

set encoding=utf-8

" leader key
let mapleader="\<Space>"

set t_Co=256

set encoding=utf-8


" Enable filetype plugins
filetype plugin on
filetype indent on

" Set to auto read when a file is changed from the outside
set autoread
au FocusGained,BufEnter * checktime

" Avoid garbled characters in Chinese language windows OS
let $LANG='en'
set langmenu=en
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim

" Turn on the Wild menu
set wildmenu

" Ignore compiled files
set wildignore=*.o,*~,*.pyc
if has("win16") || has("win32")
    set wildignore+=.git\*,.hg\*,.svn\*
else
    set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/.DS_Store
endif


" Highlight search results
set hlsearch
" Makes search act like search in modern browsers
set incsearch


" Show matching brackets when text indicator is over them
set showmatch

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Files, backups and undo
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Turn backup off, since most stuff is in SVN, git etc. anyway...
set nobackup
set nowb
set noswapfile


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Text, tab and indent related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

" 1 tab == 4 spaces
set shiftwidth=4
set tabstop=4

" Linebreak on 500 characters
set lbr
set tw=500

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines


" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


" motion faster
noremap J 5j
noremap K 5k

" Remap VIM 0 to first non-blank character
noremap H ^
noremap L $


" relativenumber
noremap snu :set number relativenumber<CR>
" no relativenumber
noremap snm :set nonumber norelativenumber<CR>
" no Highlight
noremap <silent> <leader><CR> :noh<CR>


" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
    let l:currentBufNum = bufnr("%")
    let l:alternateBufNum = bufnr("#")

    if buflisted(l:alternateBufNum)
        buffer #
    else
        bnext
    endif

    if bufnr("%") == l:currentBufNum
        new
    endif

    if buflisted(l:currentBufNum)
        execute("bdelete! ".l:currentBufNum)
    endif
endfunction


" Delete trailing white space on save, useful for some filetypes ;)
fun! CleanExtraSpaces()
    let save_cursor = getpos(".")
    let old_query = getreg('/')
    silent! %s/\s\+$//e
    call setpos('.', save_cursor)
    call setreg('/', old_query)
endfun

if has("autocmd")
    autocmd BufWritePre *.csv,*.dat,*.txt,*.js,*.py,*.jl,*.sh,*.f,*.cpp,.vimrc :call CleanExtraSpaces()
endif


" quit
nnoremap <Leader>q :q<CR>
" save and quit
noremap <Leader>wq :wq<CR>

" show full file path
set statusline+=%F


" Return to last edit position when opening files (You want this!)
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif


""""""""""""""""""""""""""""""
" => Visual mode related
""""""""""""""""""""""""""""""
" visual mode mapping
vnoremap ff <Esc>`>a)<Esc>`<i(<Esc>
vnoremap [[ <Esc>`>a]<Esc>`<i[<Esc>
vnoremap ]] <Esc>`>a}<Esc>`<i{<Esc>
vnoremap `` <Esc>`>a'<Esc>`<i'<Esc>

" Visual mode pressing * or # searches for the current selection
" Super useful! From an idea by Michael Naumann
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", "\\/.*'$^~[]")
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'gv'
        call CmdLine("Ack '" . l:pattern . "' " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => buffer related
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Quickly open a markdown buffer for scribble
map <leader>x :e ~/buffer.md<cr>
" buffer motion
noremap <leader>bn :w <bar> bnext<cr>
noremap <leader>bm :w <bar> bprev<cr>
" Close the current buffer
noremap <leader>bd :bd<cr>



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Misc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Remove the Windows ^M - when the encodings gets messed up
noremap <Leader>m mmHmt:%s/<C-V><cr>//ge<cr>'tzt'm


" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

"################################################################################



" plug configuation
"################################################################################

"set rtp+=~/.vim/autoload/plug.vim
"call plug#begin()

"Plug 'lifepillar/vim-solarized8'
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'
"Plug 'preservim/nerdtree'
"Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
"Plug 'junegunn/fzf.vim'
"Plug 'easymotion/vim-easymotion'
"Plug 'tpope/vim-surround'
"Plug 'preservim/nerdcommenter'

" unnecessary
"Plug 'Lattay/vasp.vim'
"Plug 'tommason14/lammps.vim'
"Plug 'dense-analysis/ale'
"Plug 'neoclide/coc.nvim', {'branch': 'release'}
"Plug 'SirVer/ultisnips'
"Plug 'honza/vim-snippets'


" github url format
"Plug 'https://ghproxy.com/https://github.com/lifepillar/vim-solarized8.git'
"Plug 'https://ghproxy.com/https://github.com/vim-airline/vim-airline.git'
"Plug 'https://ghproxy.com/https://github.com/vim-airline/vim-airline-themes.git'
"Plug 'https://ghproxy.com/https://github.com/preservim/nerdtree.git'
"Plug 'https://ghproxy.com/https://github.com/junegunn/fzf.git', { 'do': { -> fzf#install() } }
"Plug 'https://ghproxy.com/https://github.com/junegunn/fzf.vim.git'
"Plug 'https://ghproxy.com/https://github.com/easymotion/vim-easymotion.git'
"Plug 'https://ghproxy.com/https://github.com/tpope/vim-surround.git'
"Plug 'https://ghproxy.com/https://github.com/preservim/nerdcommenter.git'

" unnecessary
"Plug 'https://ghproxy.com/https://github.com/Lattay/vasp.vim.git'
"Plug 'https://ghproxy.com/https://github.com/tommason14/lammps.vim.git'
"Plug 'https://ghproxy.com/https://github.com/dense-analysis/ale.git'
" Node.js needed
"Plug 'https://ghproxy.com/https://github.com/neoclide/coc.nvim.git', {'branch': 'release'}
" python needed
"Plug 'https://ghproxy.com/https://github.com/SirVer/ultisnips.git'
"Plug 'https://ghproxy.com/https://github.com/honza/vim-snippets.git'


"call plug#end()

"################################################################################



" specific vim plugins configurations
"################################################################################

" airline configuration
"let g:airline_theme='powerlineish'
"let g:airline#extensions#tabline#enabled = 1 " Enable the list of buffers
"let g:airline#extensions#branch#enabled = 1


" NERDTree
" Start NERDTree and put the cursor back in the other window.
"autocmd VimEnter * NERDTree | wincmd p
"nnoremap <leader>n :NERDTreeFocus<CR>
"nnoremap <C-n> :NERDTree<CR>
"nnoremap <C-t> :NERDTreeToggle<CR>
"nnoremap <C-f> :NERDTreeFind<CR>


" nerdcommenter
"let g:NERDSpaceDelims = 0 " 在注释符号后加一个空格
"let g:NERDCompactSexyComs = 1 " 紧凑排布多行注释

"let g:NERDDefaultAlign = 'left' " 逐行注释左对齐
"let g:NERDAltDelims_java = 1 " JAVA 语言使用默认的注释符号

"let g:NERDCustomDelimiters = {'c': {'left': '/*', 'right': '*/'}} " C 语言注释符号
"let g:NERDCustomDelimiters = {'sh': { 'left': '# ', 'right': ''}}
"let g:NERDCommentEmptyLines = 0 " 允许空行注释

"let g:NERDTrimTrailingWhitespace = 1 " 取消注释时删除行尾空格
"let g:NERDToggleCheckAllLines = 1 " 检查选中的行操作是否成功

"let g:solarized_termtrans = 1 " 使用 termnal 背景
"let g:solarized_visibility = "high" " 使用 :set list 显示特殊字符时的高亮级别


" vim-solarized8
"set background=dark
"colorscheme solarized8


" easymotion
"map <Leader> <Plug>(easymotion-prefix)


" unnecessary
" ale
"let g:ale_linters={'python': ['pylint']}

