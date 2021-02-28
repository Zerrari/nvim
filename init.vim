"键盘映射
nmap w :w<cr>
nmap q :q<cr>
inoremap jj <Esc>
nmap <F1> :e ~/.config/nvim/init.vim<cr>
nmap s :source ~/.config/nvim/init.vim<cr>


let g:python3_host_prog = '/usr/local/opt/python@3.9/bin/python3.9'
set nocompatible
let mapleader = " "
filetype on
filetype indent on
filetype plugin on
filetype plugin indent on
"设置行号
set number
set relativenumber
set fileformat=unix
"显示命令
set showcmd
"语法高亮
syntax on
"括号匹配
set showmatch
"下划线
set cursorline
"插件安装
call plug#begin('~/.config/nvim/plugged')
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mg979/vim-xtabline'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'kevinhwang91/rnvimr'
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins', 'for' :['python']}
Plug 'luochen1990/rainbow'
Plug 'mbbill/undotree'
Plug 'airblade/vim-gitgutter'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'godlygeek/tabular'
Plug 'plasticboy/vim-markdown', {'for' :['markdown']}
Plug 'iamcco/markdown-preview.nvim', {'for' :['markdown']}
Plug 'preservim/nerdcommenter'
Plug 'Yggdroot/indentLine'
Plug 'vim-ctrlspace/vim-ctrlspace'


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


"coc explorer"
nnoremap <leader>e :CocCommand explorer<CR>

"airline
let g:airline_theme='behelit'

"vim-easymotion
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)

map  <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)

"undotree
nnoremap <F5> :UndotreeToggle<CR>

"rainbow
let g:rainbow_active = 1

"markdown
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_browser = 'Google Chrome'

"indentLine
let g:indentLine_color_term = 239
let g:indentLine_defaultGroup = 'SpecialKey'
