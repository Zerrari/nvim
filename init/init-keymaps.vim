let mapleader = ' '

noremap <leader>w :w<cr>
noremap <leader>q :q<cr>
noremap <Leader>s :source ~/.config/nvim/init.vim<cr>
noremap <F1> :e ~/.config/nvim/init.vim<cr>

noremap K 5k
noremap J 5j 
noremap H ^
noremap L $

inoremap jj <Esc>
inoremap <C-a> <home>
inoremap <C-e> <end>
inoremap <C-d> <del>
inoremap <C-u> <Esc>gUawi
nnoremap <C-e> mqA;<Esc>`q

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
