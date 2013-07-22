call pathogen#infect() 
call pathogen#helptags()

"main settings
set tabstop=2 shiftwidth=2 textwidth=100
set expandtab
set hlsearch incsearch
set autoindent autowrite smartindent smartcase cindent
set nocompatible
syntax enable
filetype plugin on
filetype indent on
set hidden
set display+=lastline
set showcmd
set showmatch
set ruler
set laststatus=2
set backspace=2
set noignorecase

let mapleader=';'
if exists(":Tabularize")
  nmap <Leader>a= :Tabularize /=<CR>
  vmap <Leader>a= :Tabularize /=<CR>
  nmap <Leader>a: :Tabularize /:\zs<CR>
  vmap <Leader>a: :Tabularize /:\zs<CR>
endif

colorscheme torte

if has("gui_running") 
"  set gfn=DejaVu_Sans_Mono:h9:cANSI 
else 
  "    colorscheme somethingElse 
endif 

"global vars

"inoremap <M-o>       <Esc>o
"inoremap <C-j>       <Down>
"let g:ragtag_global_maps = 1

" for DirDiff plugin - for english users
let g:DirDiffDynamicDiffText = 1

