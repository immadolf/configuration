" Configuration file for vim
set modelines=0		" CVE-2007-2438

" Normally we use vim-extensions. If you want true vi-compatibility
" remove change the following statements
set nocompatible	" Use Vim defaults instead of 100% vi compatibility
set backspace=2		" more powerful backspacing

" Don't write backup file if vim is being called by "crontab -e"
au BufWrite /private/tmp/crontab.* set nowritebackup nobackup
" Don't write backup file if vim is being called by "chpass"
au BufWrite /private/etc/pw.* set nowritebackup nobackup

let skip_defaults_vim=1
syntax on
set nu!


" 设置 leader key 为空格键
let mapleader = "\<Space>"

" vim 基础设置
set autoread " 当前文件在 vim 外被修改且未在 vim 里重新载入,则自动读取.
set nobackup " 不保留备份文件
set relativenumber

" vim 编码设置
set encoding=utf-8 " 设置 Vim 内部使用的字符编码，它应用于缓冲区、寄存器、表达式所用的字符
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1
set fileformats=unix,dos,mac
set termencoding=utf-8 " 用于设置终端使用的编码方式

" vim 界面设置
set ruler " 用于显示当前光标所在位置的行号和列号 (逗号分隔)。如果还有空间，在最右端显示文本在文件中的相对位置。
set showmode " 显示当前所处的模式

" vim 查找配置
set hlsearch
set incsearch " 让 Vim 根据已经在查找域中输入的文本，预览第一处匹配目标；每当新输入一个字符时，Vim 会即时更新预览内容。
set ignorecase " 忽略大小写
set smartcase "  如果搜索模式中包含大写字母,则区分大小写,否则不区分大小写

set expandtab "  将 tab 替换成空格
set smarttab " 表示插入 Tab 时使用 shiftwidth。
set shiftround " 表示缩进列数对齐到 shiftwidth 值的整数倍。

" vim  缩进配置
" autoindent 用于设置新增加的行和前一行具有相同的缩进形式
" smartindent 用于设置新增行时进行”智能”缩进，主要用于 C 语言一族，与 cindent 选项类似。在Vim smartindent 缩进模式下，每一行都有相同的缩进量，直到遇到右大括号 (}) 取消缩进形式。
" shiftround 表示缩进列数会自动取整到 ‘shiftwidth’ 选项值的倍数。
set autoindent smartindent shiftround

set shiftwidth=4 " 选项用于设置执行Vim普通模式下的缩进操作 ( << 和 >> 命令 )时缩进的列数
set tabstop=4 " tab 键表示的空格数
set softtabstop=4

" Vim显示当前光标位置
set cursorline " 高亮鼠标所在行

" vim 快捷键
" 与系统剪切板集成
noremap <leader>y "*y
noremap <leader>Y "*Y
noremap <leader>p "*p
noremap <leader>P "*P

" 窗口间移动
nnoremap <leader>l <c-w>l
nnoremap <leader>j <c-w>j
nnoremap <leader>h <c-w>h
nnoremap <leader>k <c-w>k
" 切换到上一个标签页
nnoremap <c-s-tab> gT
" 切换到下一个标签页
nnoremap <c-tab> gt

" 清除搜索高亮
nnoremap <leader><cr> :nohlsearch<cr>
