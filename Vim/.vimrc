set nocompatible               " be iMproved
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:

" original repos on github
Bundle "scrooloose/nerdtree"

" vim-scripts repos
Bundle 'taglist.vim'
Bundle 'vim-javascript'


" non github repos
"Bundle 'git://git.wincent.com/command-t.git'
" ...

filetype plugin indent on     " required!
"
" Brief help
" :BundleList          - list configured bundles
" :BundleInstall(!)    - install(update) bundles
" :BundleSearch(!) foo - search(or refresh cache first) for foo
" :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
"
" see :h vundle for more details or wiki for FAQ
" NOTE: comments after Bundle command are not allowed..
 

set nu                   "显示行号
syntax on                "开启语法高亮
colorscheme koehler       "设置颜色主题
set cursorline           "突出显示当前行
set autoindent           "自动缩进
set cindent
set tabstop=4            "设置tab长度为4
set ruler                "打开状态栏标尺
set showcmd              "在状态栏显示当前输入的命令
set incsearch            "输入搜索内容时 动态的显示搜索结果
set hlsearch             "搜索内容高亮显示
set mouse=a              "让vim支持鼠标
set encoding=utf-8       "vim的内部编码
set fileencoding=utf-8   "新建一个文件时，默认采用的编码
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1 
                         "设置打开一个文件时候，猜测的文件编码列表 按照顺序来猜测

set list                 "tab键显示为|
set listchars=tab:\|\ 

set foldenable           "允许折叠
set foldmethod=indent    "自动折叠?

filetype plugin on       "根据文件类型启用不同的插件 主要用于NERDComment插件根据不同的文件类型，注释的符号不一样

map <F2> :NERDTreeToggle<CR>          "映射F2打开/关闭NERDtree插件
imap <F2> <ESC>:NERDTreeToggle<CR>    

map <F3> :TlistToggle<CR>             "映射F3打开/关闭TagList插件
imap <F3> <ESC>:TlistToggle<CR>       

let g:miniBufExplMapWindowNavVim = 1  "用<C-h,j,k,l>切换到上下左右的窗口中去
let NERDTreeShowHidden = 1

"单个文件编译
set makeprg=gcc\ -Wall\ -g\ -o\ %<\ %
imap <F5> <ESC>:w<CR>:make<CR>:cw<CR>
map <F5> :w<CR>:make<CR>:cw<CR>

