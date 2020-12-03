" All system-wide defaults are set in $VIMRUNTIME/archlinux.vim (usually just
" /usr/share/vim/vimfiles/archlinux.vim) and sourced by the call to :runtime
" you can find below.  If you wish to change any of those settings, you should
" do it in this file (/etc/vimrc), since archlinux.vim will be overwritten
" everytime an upgrade of the vim packages is performed.  It is recommended to
" make changes after sourcing archlinux.vim since it alters the value of the
" 'compatible' option.

" This line should not be removed as it ensures that various options are
" properly set to work with the Vim-related packages.
runtime! archlinux.vim

" If you prefer the old-style vim functionalty, add 'runtime! vimrc_example.vim'
" Or better yet, read /usr/share/vim/vim80/vimrc_example.vim or the vim manual
" and configure vim to your own liking!

" do not load defaults if ~/.vimrc is missing
"let skip_defaults_vim=1

"设置编码
set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
set termencoding=utf-8
set encoding=utf-8

"设置行号
set number
" 去除vim一致性
set nocompatible
"突出显示当前行
set cursorcolumn
set cuc

"显示括号匹配
set showmatch

"基于缩进进行代码折叠
set foldmethod=manual
set nofoldenable

set shiftwidth=4
set autoindent

"语法高亮
syntax on

"设置粘贴模式
set paste

"总行死显示状态栏
"set laststatus=2

"显示光标当前位置
set ruler

"启动时不帮助可怜的乌干达儿童
set shortmess=atI

"设置配色方案
colorscheme one
"set background=dark " for the dark version
set background=light " for the light version
"斜体
let g:one_allow_italics = 1 " I love italic for comments


"使用powerline插件强化
set rtp+=/home/ti/.local/lib/python3.8/site-packages/powerline/bindings/vim "powerline安装路径
set laststatus=4  "设置vim状态栏数量为2，用于显示powerline的内容
set showtabline=2 "始终显示窗口上头的tabline
set noshowmode    "Hide the default mode text (e.g. -- INSERT -- below the statusline)
set t_Co=256

"允许折叠
set foldenable

"手动折叠
set foldmethod=manual

"高亮显示匹配的括号
set showmatch

"匹配括号高亮的时间
set matchtime=1

"设置tree调出和隐藏目录树
cmap NERDTree tree 

"映射esc来清除上次的搜多高亮效果。
nnoremap <Esc> :noh<return><Esc>

"允许折叠
set foldenable

"手动折叠
set foldmethod=manual

"高亮显示匹配的括号
set showmatch

"匹配括号高亮的时间
set matchtime=1

"设置tree调出和隐藏目录树
cmap NERDTree tree 

"映射esc来清除上次的搜多高亮效果。
nnoremap <Esc> :noh<return><Esc>

"vimrc立即生效
autocmd BufWritePost $MYVIMRC source $MYVIMRC

call plug#begin('~/.vim/plugged')
Plug 'junegunn/vim-easy-align' "一个简单易用的对齐插件
Plug 'KabbAmine/yowish.vim' "一个淡黄色，暗黄色的主题
Plug 'https://github.com/junegunn/vim-github-dashboard.git' "在vim中浏览github事件
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets' "代码片段插件
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' } "表明只有在 NERDTreeToggle 命令被调用时, 对应的插件才会被加载
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' } "ycm发生器，这是一个脚本，它从带有任意构建系统的项目生成编译器列表
Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' } "用于go语言的上下文自动补全
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' } " 模糊查找器
Plug 'Valloric/YouCompleteMe' " 模糊搜索代码补全引擎
Plug 'scrooloose/syntastic' " 语法检查插件
Plug 'Lokaltog/vim-powerline' " 强化状态栏
Plug 'Yggdroot/indentLine' " 用于显示代码对齐线
Plug 'preservim/nerdtree' " 用于显示目录树
Plug 'jiangmiao/auto-pairs' " 补全括号
Plug 'tpope/vim-eunuch' " 用于执行系统命令，比如SudoWrite
Plug 'rakr/vim-one' " vim配色
Plug 'iamcco/markdown-preview.vim' " markdown插件
call plug#end()
