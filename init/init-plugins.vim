call plug#begin('~/.config/nvim/plugged')

"colorschemes
Plug 'flazz/vim-colorschemes'

" airline
"Plug 'vim-airline/vim-airline'
"Plug 'vim-airline/vim-airline-themes'

" edit
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'Yggdroot/indentLine'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'preservim/nerdcommenter'

" quickrun
Plug 'skywind3000/asyncrun.vim' 

" syntax highlight
Plug 'numirias/semshi', {'do': ':UpdateRemotePlugins', 'for' :['python']}
Plug 'sheerun/vim-polyglot'

" syntax check
Plug 'dense-analysis/ale',{'for': ['python','c']}

" appearence
Plug 'luochen1990/rainbow'
Plug 'dracula/vim', { 'as': 'dracula' }


" markdown
Plug 'godlygeek/tabular', {'for' :['markdown']}
Plug 'plasticboy/vim-markdown', {'for' :['markdown']}
Plug 'iamcco/markdown-preview.nvim', {'for' :['markdown']}
Plug 'dhruvasagar/vim-table-mode',{'for' :['markdown']}

" buffer title
Plug 'romgrk/barbar.nvim'

" buffer icons
Plug 'ryanoasis/vim-devicons'
Plug 'kyazdani42/nvim-web-devicons'

" search
Plug 'kien/ctrlp.vim'
Plug 'tacahiroy/ctrlp-funky'
Plug 'junegunn/fzf.vim'

"tag 
Plug 'preservim/tagbar',{'for' :['c','cpp']}

"completion
Plug 'ervandew/supertab'

" snippets
Plug 'SirVer/ultisnips',{'for' :['c','python']}
Plug 'honza/vim-snippets',{'for':['c','python']}

" ranger
Plug 'francoiscabrol/ranger.vim'
Plug 'rbgrouleff/bclose.vim'

" misc
Plug 'wakatime/vim-wakatime'
Plug 'robcsi/viewmaps.vim'


call plug#end()

colorscheme vividchalk

"ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<tab>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"

"markdown
let g:vim_markdown_conceal = 0
let g:vim_markdown_conceal_code_blocks = 0
let g:vim_markdown_folding_disabled = 1

"airline
"let g:airline_theme='luna'

"vim-easymotion
map <Leader>l <Plug>(easymotion-bd-jk)
nmap <Leader>l <Plug>(easymotion-overwin-line)

"map  <Leader>w <Plug>(easymotion-bd-w)
"nmap <Leader>w <Plug>(easymotion-overwin-w)


"rainbow
let g:rainbow_active = 1

"markdown
let g:mkdp_auto_start = 0
let g:mkdp_auto_close = 1
let g:mkdp_browser = 'Google Chrome'

nnoremap <Leader>p :MarkdownPreview<CR>

"indentLine
let g:indentLine_color_term = 238
let g:indentLine_defaultGroup = 'SpecialKey'

"barbar
let bufferline = get(g:, 'bufferline', {})
let bufferline.animation = v:true
let bufferline.icons = v:true
let bufferline.auto_hide = v:false
let bufferline.icon_custom_colors = v:true
let bufferline.maximum_padding = 1



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

" asyncrun
let g:asyncrun_open = 4

nnoremap <F2> :AsyncRun gcc % -o %<<CR>

nnoremap <F3> :AsyncRun ./%<<CR>

nnoremap <F4> :AsyncRun python3 %<CR>

nnoremap <F5> :call asyncrun#quickfix_toggle(6)<CR>

nnoremap <Leader>ga :AsyncRun git add .<CR>

nnoremap <Leader>gc :AsyncRun git commit -m 

nnoremap <Leader>gp :AsyncRun git push origin<CR>

" tagbar
nnoremap <Leader>t :Tagbar<CR>

let g:tagbar_map_jump = 'f'

let g:tagbar_width = 40 

let g:tagbar_autoclose = 1

let g:tagbar_autofocus = 1

" waketime
let g:wakatime_PythonBinary = '/usr/local/opt/python@3.9/bin/python3.9'

" fzf
nnoremap <Leader>ff :Files<CR>
nnoremap <Leader>fb :Buffers<CR>

"ranger
nnoremap <Leader>r :Ranger<CR>
