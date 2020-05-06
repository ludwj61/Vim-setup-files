let WIN_PLUG_DIR = 'C:\\Users\\Jackson\\vimfiles\\plugged'
let PLUG_DIR = '~/vim/plugged'

let on_windows=0
if has("win64") || has("win32")
    let on_windows=1
    let PLUG_DIR=WIN_PLUG_DIR
endif

" PLUGIN CALLS
call plug#begin(PLUG_DIR)
Plug 'https://github.com/gruvbox-community/gruvbox.git'
call plug#end()

" CORE
set encoding=utf-8
set guioptions-=m  "menu bar
set guioptions-=T  "toolbar
set guioptions-=r  "scrollbar
set guioptions-=L  "left scrollbar
filetype off

set backspace=indent,eol,start
set hidden
set noerrorbells
set tabstop=4 softtabstop=4
set shiftwidth=4
set expandtab
set smartindent
set nu
set nowrap
set smartcase
set noswapfile
set nobackup

if on_windows == 1
    set undodir=C:\\Users\\Jackson\\vimfiles\\undodir
else
    set undodir=~/vim/undodir
endif

set undofile
set incsearch
set relativenumber number

" Give more space for displaying messages.
" set cmdheight=2

" Having longer updatetime (default is 4000 ms = 4 s) leads to noticeable
" delays and poor user experience.
set updatetime=300

" Don't pass messages to |ins-completion-menu|.
set shortmess+=c

" color column
set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

" font
if on_windows == 1
    set guifont=Source_Code_Pro:h11:cANSI:qDRAFT
else
    set guifont=Source\ Code\ Pro\ 12
endif

" open files to the right of netrw
let g:netrw_altv=1

" status line
set statusline=%<%.99f\ %h%w%m%r%{exists('*CapsLockStatusline')?CapsLockStatusline():''}%y%=%-16(\ %l,%c\ %)%P
set laststatus=2

" syntax highlighting
set autoindent
filetype plugin indent on
syntax on

" KEY MAPPING
let mapleader = " "

let g:netrw_browse_split = 2
let g:netrw_banner = 0
let g:netrw_winsize = 25
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <leader>pv :wincmd v<bar> :Ex <bar> :vertical resize 30<CR>
nnoremap <silent> <leader>pe :vertical resize 30<CR>
nnoremap <silent> <Leader>+ :vertical resize +5<CR>
nnoremap <silent> <Leader>- :vertical resize -5<CR>

" LATE CHANGES, THEMES, etc
set background=dark
colorscheme gruvbox

