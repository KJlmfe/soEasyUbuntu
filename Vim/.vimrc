set nocompatible               " be iMproved 关闭Vi兼容模式 must be first line
filetype off                   " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

" My Bundles here:

" original repos on github
Bundle "scrooloose/nerdtree"
Bundle "scrooloose/nerdcommenter"
Bundle "scrooloose/syntastic"
Bundle "skammer/vim-css-color"
Bundle "Yggdroot/indentLine"
Bundle "KJlmfe/Conque-Shell"
Bundle "Lokaltog/vim-powerline"
Bundle "SirVer/ultisnips"

" vim-scripts repos
Bundle 'taglist.vim'
Bundle 'vim-javascript'
Bundle 'OmniCppComplete'

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
colorscheme koehler      "设置颜色主题
set cursorline           "突出显示当前行
set autoindent           "自动缩进  所谓的缩排，就是当你按下Enter编辑新的一行时，游标不会在行首，而是在与上一行的第一个非空白字元处对齐！
set cindent
set shiftwidth=4
set tabstop=4            "设置tab长度为4
set softtabstop=4 				" let backspace delete indent
set expandtab			 "tab用空格代替
set ruler                "打开状态栏标尺
set showcmd              "在状态栏显示当前输入的命令
set showmode			 "显示INSERT NORMAL等
set incsearch            "输入搜索内容时 动态的显示搜索结果
set hlsearch             "搜索内容高亮显示
set mouse=a              "让vim支持鼠标
set encoding=utf-8       "vim的内部编码
set fileencoding=utf-8   "新建一个文件时，默认采用的编码
set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1 "设置打开一个文件时候，猜测的文件编码列表 按照顺序来猜测
set list                 "tab键显示为|
set listchars=tab:\|\ 
set foldenable           "允许折叠
set foldmethod=syntax    "自动折叠?
set history=1000                " Store a ton of history (default is 20)
    
" Easier moving in tabs and windows
	map wj <C-W>j
	map wk <C-W>k
	map wl <C-W>l
	map wh <C-W>h

filetype plugin on       "根据文件类型启用不同的插件 主要用于NERDComment插件根据不同的文件类型，注释的符号不一样

map <F3> :TlistToggle<CR>             "映射F3打开/关闭TagList插件
imap <F3> <ESC>:TlistToggle<CR>       

"let g:miniBufExplMapWindowNavVim = 1  "用<C-h,j,k,l>切换到上下左右的窗口中去

"单个文件编译
set makeprg=gcc\ -Wall\ -g\ -o\ %<\ %
imap <F5> <ESC>:w<CR>:make<CR>:cw<CR>
map <F5> :w<CR>:make<CR>:cw<CR>


let g:cssColorVimDoNotMessMyUpdatetime = 1 "g:cssColorVimDoNotMessMyUpdatetime is used when updatetime value set by plugin (100ms) is interfering with your configuration.

"NERDTree"
"映射F2打开/关闭NERDtree插件
map <F2> :NERDTreeToggle<CR>
imap <F2> <ESC>:NERDTreeToggle<CR>    

let NERDTreeShowHidden = 1
let NERDTreeShowBookmarks = 1   "Tells the NERD tree whether to display the bookmarks table on startup.
let NERDTreeShowLineNumbers = 1 "Tells the NERD tree whether to display line numbers in the tree window.
let NERDTreeWinSize = 33   "Sets the window size when the NERD tree is opened.
let NERDTreeMinimalUI = 1 "Disables display of the 'Bookmarks' label and 'Press ? for help' text.


"taglist
"This will look in the current directory for 'tags', and work up the tree towards root until one is found. 
set tags=./tags;/,$HOME/vimtags

map <F12> :!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>
imap <F12> <ESC>:!ctags -R --c++-kinds=+p --fields=+iaS --extra=+q .<CR>

let Tlist_Show_One_File = 1     "不同时显示多个文件的tag，只显示当前文件的
let Tlist_Exit_OnlyWindow = 1   "如果taglist窗口是最后一个窗口，则退出vim
let Tlist_Use_Right_Window = 1  "在右侧窗口中显示taglist窗口


" Omni Complete 自动补全

"打开自动补全 向下选择
inoremap <expr> <C-J>      pumvisible()?"\<C-N>":"\<C-X><C-O>"  
"向上
inoremap <expr> <C-K>      pumvisible()?"\<C-P>":"\<C-K>"
"确认选择
inoremap <expr> <C-L>       pumvisible()?"\<C-Y>":"\<CR>"
"取消
inoremap <expr> <C-H>      pumvisible()?"\<C-E>":"\<C-L>" 

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType php set omnifunc=phpcomplete#CompletePHP
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
autocmd FileType c set omnifunc=ccomplete#Complete

"vim-powerline
set laststatus=2   " Always show the statusline
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors
let g:Powerline_symbols = 'fancy'  "Custom icons and arrows. Requires a patched font.

" syntastic
let g:syntastic_auto_jump=1
let g:syntastic_check_on_open = 1
let g:syntastic_error_symbol = '✗'
let g:syntastic_warning_symbol = '⚠'
let g:syntastic_auto_loc_list = 1
let g:syntastic_loc_list_height = 6
let g:syntastic_enable_highlighting = 0

"javascript
let b:javascript_fold=1 " 打开javascript折叠
let javascript_enable_domhtmlcss=1 " 打开javascript对dom、html和css的支持
