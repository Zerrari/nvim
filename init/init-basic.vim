" 禁用vi兼容模式
set nocompatible

" 设置编码模式
set encoding=UTF-8

" 设置鼠标不可用 
set mouse=

" 允许下方显示目录
set wildmenu

" 设置命令行高度
set cmdheight=1   

set cwh=1

" 关闭自动换行
set wrap

" 显示匹配的括号
set showmatch

" 匹配时间
set matchtime=2

" 设置行号
set number

" 设置相对行号
set relativenumber

set fileformat=unix

" 设置命令可见
set showcmd

" 高亮当前行
set cursorline

" 取消备份文件
set nobackup

" 取消交换文件
set noswapfile

" 设置标尺
set ruler

" 下滑设置
set scrolloff=7

" 延迟绘制（提升性能）
set lazyredraw

" 缩进
set tabstop=4
set shiftwidth=4
set autoindent
set softtabstop=4
set cindent
set expandtab
set smarttab

set statusline=%t%m%r%=%l

highlight StatusLine ctermfg=14
highlight statusline ctermbg=gray

iabbrev sd self development
iabbrev ct category
iabbrev sm summary
 

"----------------------------------------------------------------------
" 搜索设置
"----------------------------------------------------------------------

" 忽略大小写
set ignorecase

" 智能搜索大小写判断，默认忽略大小写，除非搜索内容包含大写字母
set smartcase

" 高亮搜索内容
set nohlsearch

" 查找输入时动态增量显示查找结果
set incsearch



"----------------------------------------------------------------------
" 文件搜索和补全时忽略下面扩展名
"----------------------------------------------------------------------
set suffixes=.bak,~,.o,.h,.info,.swp,.obj,.pyc,.pyo,.egg-info,.class

set wildignore=*.o,*.obj,*~,*.exe,*.a,*.pdb,*.lib 
set wildignore+=*.so,*.dll,*.swp,*.egg,*.jar,*.class,*.pyc,*.pyo,*.bin,*.dex
set wildignore+=*.zip,*.7z,*.rar,*.gz,*.tar,*.gzip,*.bz2,*.tgz,*.xz    
set wildignore+=*DS_Store*,*.ipch
set wildignore+=*.gem
set wildignore+=*.png,*.jpg,*.gif,*.bmp,*.tga,*.pcx,*.ppm,*.img,*.iso
set wildignore+=*.so,*.swp,*.zip,*/.Trash/**,*.pdf,*.dmg,*/.rbenv/**
set wildignore+=*/.nx/**,*.app,*.git,.git
set wildignore+=*.wav,*.mp3,*.ogg,*.pcm
set wildignore+=*.mht,*.suo,*.sdf,*.jnlp
set wildignore+=*.chm,*.epub,*.pdf,*.mobi,*.ttf
set wildignore+=*.mp4,*.avi,*.flv,*.mov,*.mkv,*.swf,*.swc
set wildignore+=*.ppt,*.pptx,*.docx,*.xlt,*.xls,*.xlsx,*.odt,*.wps
set wildignore+=*.msi,*.crx,*.deb,*.vfd,*.apk,*.ipa,*.bin,*.msu
set wildignore+=*.gba,*.sfc,*.078,*.nds,*.smd,*.smc
set wildignore+=*.linux2,*.win32,*.darwin,*.freebsd,*.linux,*.android
