" 打开代码高亮
syntax enable

" 设置配色方案

" 显示行号
set number

" 高亮当前行
set cursorline

" 显示80列线
set cc=80

" 字符编码设置为utf8
set encoding=utf8

"代码折叠 indent:以缩进表示
set fdm=indent

" 状态栏设置为2行
set laststatus=2

" Tab设置为4个空格
set tabstop=4
set shiftwidth=4
set backspace=indent,eol,start
set expandtab

" 设置为256色
set t_Co=256


set nocompatible              " be iMproved, required
filetype off                  " required

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""tagslist 设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let Tlist_Auto_Open = 1
let Tlist_Use_Right_Window = 1  
let Tlist_File_Fold_Auto_Close=1
let Tlist_Exit_OnlyWindow=1
map tl :TlistToggle<cr> 

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""WinManager 设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:winManagerWindowLayout='FileExplorer|BufExplorer'
let g:persistentBehaviour=0
nmap wm :WMToggle<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""Supertab设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:SuperTabDefaultCompletionType="context"
let g:SuperTabRetainCompletionType=2
let g:SuperTabNoCompleteAfter = ['^', ',', '\s', '\t']


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""Template设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:template_author = "赵影楠<zhaoyn@mail.jj.cn>"
let g:template_path = "/Users/simon/.vim/bundle/load_template/template/"

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""Syntastic设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_check_on_open = 1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Powerline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"set guifont=PowerlineSymblos\ ofr\ Powerline
"let g:Powerline_symbols='fancy'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Markdown配置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vim_markdown_math=1
let g:vim_markdown_frontmatter=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""Syntastic设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:syntastic_check_on_open = 1
let g:syntastic_error_symbol = 'x'
let g:syntastic_warning_symbol = '!'
let g:syntastic_phpcs_conf = "--tab-width=4"
let g:syntastic_php_checkers=['php', 'phpcs', 'phpmd' ]
let g:syntastic_mode_map = { 'passive_filetypes' : ['phtml'] }


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""neocomplcache 设置
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:neocomplcache_enable_at_startup = 1
imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

" SuperTab like snippets behavior.
imap <expr><TAB> neosnippet#expandable_or_jumpable() ?   "\<Plug>(neosnippet_expand_or_jump)" : pumvisible() ? "\<C-n>" : "\<TAB>"
smap <expr><TAB> neosnippet#expandable_or_jumpable() ?   "\<Plug>(neosnippet_expand_or_jump)" : "\<TAB>"
"
" " For snippet_complete marker.
if has('conceal')
   set conceallevel=2 concealcursor=i
endif

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'ervandew/supertab' "TAB键加强
Plugin 'vim-scripts/taglist.vim' "TagList
Plugin 'scrooloose/syntastic' "代码检查
Plugin 'Lokaltog/vim-powerline' " 状态行插件
Plugin 'Shougo/neocomplcache.vim' " 代码补全插件
Plugin 'Shougo/neosnippet' " 代码提示插件
Plugin 'Shougo/neosnippet-snippets' " 代码片段
Plugin 'uarun/vim-protobuf' "Google Protobuf支持
Plugin 'othree/xml.vim' "XML语法支持
Plugin 'Townk/vim-qt' "QT支持
Plugin 'pangloss/vim-javascript' "JS支持
Plugin 'othree/javascript-libraries-syntax.vim' "JS语法检查
Plugin 'matthewsimo/angular-vim-snippets' "Angular语法片段
Plugin 'claco/jasmine.vim' "Js测试框架
Plugin 'mattn/emmet-vim' "HTML快捷输入
Plugin 'godlygeek/tabular' "HTML CSS快捷输入
Plugin 'plasticboy/vim-markdown' "Markdown支持
Plugin 'simonzhao/load_template' "模版

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
autocmd BufRead,BufNewFile *.phtml set filetype=html.php
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
