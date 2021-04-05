nmap W :w<cr>
nmap Q :q<cr>
inoremap jj <Esc>
nmap <F1> :e ~/.config/nvim/init.vim<cr>
nmap S :source ~/.config/nvim/init.vim<cr>

map K 5k
map J 5j 
noremap H ^
noremap L $

nnoremap ; :

cnoremap <C-a> <Home>
cnoremap <C-e> <End>

map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

let g:python3_host_prog = '/usr/local/opt/python@3.9/bin/python3.9'
let mapleader = " "

filetype on
filetype indent on
filetype plugin on

syntax on

set history=500
set autoread
au FocusGained,BufEnter * checktime

set mouse=
set wildmenu
set cmdheight=1
set wrap
set ignorecase
set smartcase
set encoding=UTF-8
set number
set nrformats=
set nocompatible
set relativenumber
set fileformat=unix
set showcmd
set showmatch
set matchtime=2
set cursorline
set nobackup
set nowb
set noswapfile
set ruler
set hid
set scrolloff=7
set nohlsearch
set incsearch
set hid
set lazyredraw
set background=dark

" 缩进
set tabstop=4
set shiftwidth=4
set autoindent
set softtabstop=4
set cindent
set expandtab
set smarttab

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

autocmd BufNewFile *.c 0r ~/.config/nvim/skeleton/skeleton.c
autocmd BufNewFile *.sh 0r ~/.config/nvim/skeleton/skeleton.sh
autocmd BufNewFile * normal G

call plug#begin('~/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins', 'for' :['python']}
Plug 'luochen1990/rainbow'
Plug 'airblade/vim-gitgutter'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'godlygeek/tabular'
Plug 'iamcco/markdown-preview.nvim', {'for' :['markdown']}
Plug 'preservim/nerdcommenter'
Plug 'Yggdroot/indentLine'
Plug 'romgrk/barbar.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'dhruvasagar/vim-table-mode',{'for' :['markdown']}
Plug 'kien/ctrlp.vim'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
"Plug 'vim-syntastic/syntastic'
"
"auto completion

"syntax check
"Plug 'w0rp/ale'

"syntax highlight
"Plug 'sheerun/vim-polyglot'

call plug#end()

colorscheme dracula

"ale
"let b:ale_fixers = [ 'pyright' ]


"coc
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

nmap <silent> gd <Plug>(coc-definition)

"coc-snippets
imap <C-l> <Plug>(coc-snippets-expand)
let g:coc_snippet_next = '<c-j>'
let g:coc_snippet_prev = '<c-k>'
imap <C-j> <Plug>(coc-snippets-expand-jump)

inoremap <silent><expr> <TAB>
      \ pumvisible() ? coc#_select_confirm() :
      \ coc#expandableOrJumpable() ? "\<C-r>=coc#rpc#request('doKeymap', ['snippets-expand-jump',''])\<CR>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

let g:coc_snippet_next = '<tab>'


"airline
let g:airline_theme='luna'

"vim-easymotion
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)

map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

"rainbow
let g:rainbow_active = 1

"markdown
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_browser = 'Google Chrome'

"indentLine
let g:indentLine_color_term = 238
let g:indentLine_defaultGroup = 'SpecialKey'

"barbar
let bufferline = get(g:, 'bufferline', {})
let bufferline.animation = v:true
let bufferline.icons = v:true
let bufferline.auto_hide = v:false
let bufferline.icon_custom_colors = v:true
let bufferline.clickable = v:true
let bufferline.maximum_padding = 1

" Move to previous/next
nnoremap <silent>    <leader>, :BufferPrevious<CR>
nnoremap <silent>    <leader>. :BufferNext<CR>
" Re-order to previous/next
nnoremap <silent>    <leader>< :BufferMovePrevious<CR>
nnoremap <silent>    <leader>> :BufferMoveNext<CR>
" Close buffer
nnoremap <silent>    <leader>c :BufferClose<CR>
nnoremap <silent>    <leader>a :BufferPick<CR>

"vim-table-mode
function! s:isAtStartOfLine(mapping)
  let text_before_cursor = getline('.')[0 : col('.')-1]
  let mapping_pattern = '\V' . escape(a:mapping, '\')
  let comment_pattern = '\V' . escape(substitute(&l:commentstring, '%s.*$', '', ''), '\')
  return (text_before_cursor =~? '^' . ('\v(' . comment_pattern . '\v)?') . '\s*\v' . mapping_pattern . '\v$')
endfunction

inoreabbrev <expr> <bar><bar>
          \ <SID>isAtStartOfLine('\|\|') ?
          \ '<c-o>:TableModeEnable<cr><bar><space><bar><left><left>' : '<bar><bar>'
inoreabbrev <expr> __
          \ <SID>isAtStartOfLine('__') ?
          \ '<c-o>:silent! TableModeDisable<cr>' : '__'


"rainbow
let g:rainbow_conf = {
\	'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\	'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\	'operators': '_,_',
\	'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
\'separately': {
\		'*': {},
\		'tex': {
\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\		},
\		'lisp': {
\			'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
\		},
\		'vim': {
\			'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
\		},
\		'html': {
\			'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
\		},
\		'css': 0,
\	}
\}

" markdown 
autocmd Filetype markdown inoremap <buffer> <silent> ;, <++>
autocmd Filetype markdown inoremap <buffer> <silent> ;f <Esc>/<++><CR>:nohlsearch<CR>c4l
autocmd Filetype markdown inoremap <buffer> <silent> ;b **** <++><Esc>F*hi
autocmd Filetype markdown inoremap <buffer> <silent> ;p ![](<++>) <Enter><++><Esc>kF[a
autocmd Filetype markdown inoremap <buffer> <silent> ;a [](<++>) <Enter><++><Esc>kF[a
autocmd Filetype markdown inoremap <buffer> <silent> ;h #  
autocmd Filetype markdown inoremap <buffer> <silent> ;h2 ## 
autocmd Filetype markdown inoremap <buffer> <silent> ;h3 ### 
autocmd Filetype markdown inoremap <buffer> <silent> ;c ```<Enter>```<Esc>O
autocmd Filetype markdown inoremap <buffer> <silent> ;s ***<Enter>

