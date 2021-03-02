"键盘映射
nmap <C-w> :w<cr>
nmap <C-q> :q<cr>
inoremap jj <Esc>
nmap <F1> :e ~/.config/nvim/init.vim<cr>
nmap <C-s> :source ~/.config/nvim/init.vim<cr>

nnoremap <C-t> :tabnew<cr>


let g:python3_host_prog = '/usr/local/opt/python@3.9/bin/python3.9'
let mapleader = " "

filetype on
filetype indent on
filetype plugin on
filetype plugin indent on

set encoding=UTF-8
set number
set nrformats=
set nocompatible
set relativenumber
set fileformat=unix
set showcmd
syntax on
set showmatch
set cursorline
set nobackup
set noswapfile
set ruler
set smartindent
set autoindent
set tabstop=4



call plug#begin('~/.config/nvim/plugged')

Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
" Plug 'mg979/vim-xtabline'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins', 'for' :['python']}
Plug 'luochen1990/rainbow'
Plug 'airblade/vim-gitgutter'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown', {'for' :['markdown']}
Plug 'iamcco/markdown-preview.nvim', {'for' :['markdown']}
Plug 'preservim/nerdcommenter'
Plug 'Yggdroot/indentLine'
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
Plug 'romgrk/barbar.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'

call plug#end()

colorscheme dracula

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
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

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


"nerdtree
nnoremap <C-n> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

"airline
let g:airline_theme='behelit'

"vim-easymotion
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)

map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

"undotree
nnoremap <F2> :UndotreeToggle<CR>

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
let bufferline.icon_custom_colors = v:false

" Move to previous/next
nnoremap <silent>    <leader>, :BufferPrevious<CR>
nnoremap <silent>    <leader>. :BufferNext<CR>
" Re-order to previous/next
nnoremap <silent>    <leader>< :BufferMovePrevious<CR>
nnoremap <silent>    <leader>> :BufferMoveNext<CR>
" Close buffer
nnoremap <silent>    <leader>c :BufferClose<CR>
