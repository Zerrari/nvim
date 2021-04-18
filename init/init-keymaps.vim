let mapleader = ' '

nmap <leader>w :w<cr>
nmap <leader>q :q<cr>
nmap <Leader>s :source ~/.config/nvim/init.vim<cr>
inoremap jj <Esc>
nmap <F1> :e ~/.config/nvim/init.vim<cr>

map K 5k
map J 5j 
noremap H ^
noremap L $

inoremap <c-a> <home>
inoremap <c-e> <end>
inoremap <c-d> <del>

cnoremap <C-a> <Home>
cnoremap <C-e> <End>

map <Left> <Nop>
map <Right> <Nop>
map <Up> <Nop>
map <Down> <Nop>

" markdown 
autocmd Filetype markdown inoremap <buffer> <silent> ;, <++>
autocmd Filetype markdown inoremap <buffer> <silent> ;f <Esc>/<++><CR>:nohlsearch<CR>c4l
autocmd Filetype markdown inoremap <buffer> <silent> ;i ** <++><Esc>F*i 
autocmd Filetype markdown inoremap <buffer> <silent> ;b **** <++><Esc>F*hi
autocmd Filetype markdown inoremap <buffer> <silent> ;p ![](<++>) <Enter><++><Esc>kF[a
autocmd Filetype markdown inoremap <buffer> <silent> ;a [](<++>) <Enter><++><Esc>kF[a
autocmd Filetype markdown inoremap <buffer> <silent> ;h #  
autocmd Filetype markdown inoremap <buffer> <silent> ;h2 ## 
autocmd Filetype markdown inoremap <buffer> <silent> ;h3 ### 
autocmd Filetype markdown inoremap <buffer> <silent> ;c ```<Enter>```<Esc>O
autocmd Filetype markdown inoremap <buffer> <silent> ;s ***<Enter>

" Move to previous/next
nnoremap <silent>    <leader>j :BufferPrevious<CR>
nnoremap <silent>    <leader>k :BufferNext<CR>

" Close buffer
nnoremap <silent>    <leader>c :BufferClose<CR>
