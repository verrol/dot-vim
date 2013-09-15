" Inspired by many other vim users, like Ben Orenstien, Steve Losh (stevelosh.com/blog/2010/09/coming-home-to-vim)
"
set nocompatible               " be iMproved
filetype off

let mapleader=';'

" Use Pathogen:
call pathogen#runtime_append_all_bundles()
call pathogen#helptags()
" call pathogen#infect() 

set modelines=0

"main settings
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

syntax enable
filetype plugin on
filetype indent on

set number
set hlsearch
set incsearch
set autowrite
set smartindent
set smartcase
set cindent
set hidden
set display+=lastline
set showcmd
set showmatch
set ruler
set laststatus=2
set backspace=indent,eol,start
set noignorecase
set encoding=utf-8
set scrolloff=3
set autoindent
set showmode
set wildmenu
set wildmode=list:longest
set visualbell
set cursorline
set ttyfast
set relativenumber
set undofile
set gdefault
set ignorecase

" save files often, just do so with ';;'
nnoremap <leader>;  :wa<CR>

" save current buffer and close it, quit VIM if last buffer
nnoremap <leader>q :<Z><Z><CR>

" quit VIM, save all and exit
nnoremap <leader>wq :wqall<CR>

" make vim search work like Perl regex
nnoremap / /\v
vnoremap / /\v

" remove highlight from search after you find what you want
nnoremap <leader><space> :noh<CR>

" press tab in command or visual mode to find matching pairs instead of typing '%'
nnoremap <tab> %
vnoremap <tab> %

" wrap long lines, but show a colored column at 85
set wrap
set textwidth=100
set formatoptions=qrn1
set colorcolumn=95

" sensible visuabl characters for tab and new line
set list
set listchars=tab:▸\ ,eol:¬

" toggle 'list' command
nmap <leader>l :set list!<CR>

" disable arrow kesys and make j and k move in 'screen lines' instead of 'file lines"
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
nnoremap j gj
nnoremap k gk

" remap F1 to <ESC>, in command mode, most likely what you were trying to hit anyway
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>

" in command mode, ';' and ':' are the same thing
" nnoremap ; :

" save current buffer on losing focus
au FocusLost * :wa

" This next mapping imitates TextMates Ctrl+Q function to re-hardwrap paragraphs of text:
nnoremap <leader>q gqip

" ,v mapping to reselect the text that was just pasted
nnoremap <leader>v V`]

" quickly open ~/.vimrc file in a vertically split window
nnoremap <leader>ev <C-w><C-v><C-l>:e $MYVIMRC<CR>

" bring up Ack plugin
nnoremap <leader>a :Ack

" DWM plugin remap, else conflicts with YankRing and I don't want to remap YankRing
nnoremap <leader>wn     :DWM_New<CR>
nnoremap <leader>wc     :DWM_Close<CR>
nnoremap <leader>wf     :DWM_Focus<CR>
nnoremap <leader>wfs    :DWM_Full<CR>

" toggle rainbow color plugin
nnoremap <leader>rp :ToggleRaibowParenthesis<CR>

" start NERDTree
nnoremap <leader>nt :NERDTree<CR>

" show previous yanks with YankRing plugin
nnoremap <leader>yr :YRShow<CR>

" set EasyMotion trigger to <leader> instead of <leader><leader>
let g:EasyMotion_leader_key = '<Leader><leader>'

if exists(":Tabularize")
  nmap <Leader>= :Tabularize /=<CR>
  vmap <Leader>= :Tabularize /=<CR>
  nmap <Leader>: :Tabularize /:\zs<CR>
  vmap <Leader>: :Tabularize /:\zs<CR>
  nmap <Leader>, :Tabularize /,\zs<CR>
  vmap <Leader>, :Tabularize /,\zs<CR>
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

