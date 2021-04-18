
let s:home = fnamemodify(resolve(expand('<sfile>:p')), ':h')

command! -nargs=1 LoadScript exec 'so '.s:home.'/'.'<args>'

exec 'set rtp+='.s:home

set rtp+=~/.vim

let g:python3_host_prog = '/usr/local/opt/python@3.9/bin/python3.9'

filetype on
filetype indent on
filetype plugin on

syntax on

set history=50

set autoread

au FocusGained,BufEnter * checktime

"polyglot
let g:polyglot_disabled = ['python.plugin']

au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif

autocmd BufWritePost $MYVIMRC source $MYVIMRC

autocmd BufNewFile *.c 0r ~/.config/nvim/skeleton/skeleton.c
autocmd BufNewFile *.sh 0r ~/.config/nvim/skeleton/skeleton.sh
autocmd BufNewFile * normal G

set dictionary=/Users/zerrari/.config/nvim/dict/c.dict

LoadScript init/init-basic.vim

LoadScript init/init-keymaps.vim

LoadScript init/init-plugins.vim
