"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Basic settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"make Vim behave in a more useful way.
set nocompatible

"set gui option
set go=gmrLt

"Show line number
set nu

" file detection
filetype on

" indent according to filetype
filetype indent on

"Do not keep *~ files
set nobackup

"Do not keep *un~ files
set noundofile

"Set to auto read when a file is changed from the outside
set autoread

"Sets how many lines of history VIM har to remember
set history=100

"Set 7 lines to the cursors away from the border- when moving vertical..
set so=7

"Turn on WiLd menu
set wildmenu

"Always show current position
set ruler

"The commandbar is 2 high
set cmdheight=2

"show matching bracets
set showmatch

"How many tenths of a second to blink
set mat=2

"Highlight search things
set hlsearch

"imediately show the search result
set is

"set hide unsaved buf
set hidden

"the last window will have a status line
set laststatus=2

"Set backspace
set backspace=eol,start,indent

"Bbackspace and cursor keys wrap to
set whichwrap+=<,>,h,l

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Folding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Enable folding
"set foldmethod
"set nofen
set foldenable
set fdl=3
set fdm=syntax

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Text options
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" don't expand tab with spaces
"set noexpandtab
" expand tab with spaces
set expandtab

" tab indent
set shiftwidth=4

" this option should be set to "double" when a CJK font is used
set ambiwidth=double

set smarttab

"Set Tab=4 spaces
set tabstop=4

" wrap long lines at a character in 'breakat'
" only affects the way the file is displayed
set lbr

"set formatoptions
"t：根据 textwidth 自动折行；
"c：在（程序源代码中的）注释中自动折行，插入合适的注释起始字符；
"r：插入模式下在注释中键入回车时，插入合适的注释起始字符；
"q：允许使用“gq”命令对注释进行格式化；
"n：识别编号列表，编号行的下一行的缩进由数字后的空白决定（与“2”冲突，需要“autoindent”）；
"2：使用一段的第二行的缩进来格式化文本；
"l：在当前行长度超过 textwidth 时，不自动重新格式化；
"m：在多字节字符处可以折行，对中文特别有效（否则只在空白字符处折行）；
"M：在拼接两行时（重新格式化，或者是手工使用“J”命令），如果前一行的结尾或后一行的开头是多字节字符，则不插入空格，非常适合中文
set formatoptions+=mM

   """"""""""""""""""""""""""""""
   " Indent
   """"""""""""""""""""""""""""""
   "Auto indent
   set ai
   "Set auto indent width = 4 spaces
   set sw=4

   "Smart indet
   set si

   "C-style indenting
   set cindent  "usage: select codes, press '=' key, the codes will autoindenting

   "Wrap lines
   set wrap

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Colors and Fonts
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Enable syntax highlight
syntax enable


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" encoding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 编码的自动识别，是通过设置fileencodings实现的。
" fileencodings是一个用逗号分隔的列表，列表中的每一项是一种编码的名称。
" 当我们打开文件时，Vim按顺序使用fileencodings中的编码进行尝试解码，
" 如果成功的话，就使用该编码方式进行解码，并将fileencoding设置为这个值；如果失败的话，就继续检验下一个编码。
" 因此，我们在设置fileencodings时，一定要把严格的编码方式放在前面，把宽松的编码方式放在后面。
" 例如，latin1是一种非常宽松的编码方式，任何一种编码方式得到的文本，用latin1进行解码，都不会发生解码失败。
" 当然，解码得到的结果也很可能会是乱码。
" 因此，如果你把latin1放到fileencodings的第一位，那么打开任何中文文件都会显示乱码了。
" 推荐使用以下fileencodings设置：
set fileencodings=utf-8,gb2312,gbk,gb18030

" encoding是Vim内部使用的字符编码方式。
" Vim内部所有的buffer、寄存器、脚本中的字符串等，都会使用encoding设置的编码。
" 如果编码方式与Vim的内部编码不一致，那么会先把编码转换成内部编码。
" 如果编码中含有无法转换为内部编码的字符，那么这些字符就会丢失。
" 因此，在选择Vim内部编码时，一定要使用一种包容力足够强的编码。
" 由于encoding选项涉及到Vim中所有字符的内部表示，因此只能在Vim启动的时候设置一次。
" 在Vim工作过程中修改encoding会造成非常多的问题。
" 建议将encoding设置为utf-8，同时设置以下选项，以避免在非UTF-8系统（如Windows）下，菜单和系统提示出现乱码：
set encoding=utf-8
set langmenu=en_US
let $LANG = 'en_US'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
" 如果要使用中文菜单，把上面4行替换成下面两行
" set langmenu=zh_CN.UTF-8
" language message zh_CN.UTF-8

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Key binding
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <C-h> <C-w>h
nnoremap <C-l> <C-w>l
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
noremap <Leader>wr :set wrap<CR>

" for windows
noremap <F11> :!py -2 %
noremap <F12> :!py -3 %


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" autocmd
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"windows窗口最大化设置（如果不想打开vim后就自动最大化，把这行删去）
au GUIEnter * simalt ~x

" highlight cursorLine

augroup cursor_line
	autocmd!
	autocmd BufRead * set cursorline
	autocmd InsertEnter * set nocursorline
	autocmd InsertLeave * set cursorline
augroup END

augroup auto_reload_vimrc
	autocmd!
	autocmd BufWritePost *vimrc source $MYVIMRC
augroup END

"auto trailing whitespace
augroup auto_trailing_whitespace
	autocmd!
	autocmd BufWritePre *.c :%s/\s\+$//e
	autocmd BufWritePre *.h :%s/\s\+$//e
	autocmd BufWritePre Kconfig :%s/\s\+$//e
	autocmd BufWritePre Makefile :%s/\s\+$//e
augroup END

" auto pair bracket
inoremap ( <c-r>=StartPair('(')<CR>
inoremap [ <c-r>=StartPair('[')<CR>
inoremap {<CR> {<CR>}<Esc>O
"autocmd Syntax html,vim inoremap < <lt>><Esc>i| inoremap > <c-r>=ClosePair('>')<CR>
inoremap ) <c-r>=ClosePair(')')<CR>
inoremap ] <c-r>=ClosePair(']')<CR>
"inoremap } <c-r>=CloseBracket()<CR>
"inoremap " <c-r>=QuoteDelim('"')<CR>
"inoremap ' <c-r>=QuoteDelim("'")<CR>
"用退格键删除一个左括号时同时删除对应的右括号
"inoremap <BS> <ESC>:call RemovePairs()<CR>
inoremap <BS> <c-r>=RemovePairs()<CR>

function! StartPair(char)
	if a:char == '('
		let l:endChar = ')'
	elseif a:char =='['
		let l:endChar = ']'
	endif
"	if strlen(getline('.')) == col('.')
	if match(strpart(getline(line('.')), col('.')-1), '\s*\S') < 0
		" if followed only by whitespaces...
		" add pair automatically
		return a:char.l:endChar."\<ESC>i"
	else
		"echom "has following characters" . a:char
		return a:char
	endif
endfunction

function! ClosePair(char)
	if getline('.')[col('.') - 1] == a:char
		return "\<Right>"
	else
		return a:char
	endif
endf

function! RemovePairs()
	let l:line = getline(".")
	let l:previous_char = l:line[col(".")-2] "取得当前光标前一个字符

	if l:previous_char ==# '('
		let l:close_char = ')'
	elseif l:previous_char ==# '['
		let l:close_char = ']'
	else
		return "\<BS>"
	endif

	if l:previous_char ==# '(' || l:previous_char ==# '['
		if match(strpart(getline(line('.')), col('.')-1), '\s*'.l:close_char) != -1
			" if followed by spaces and ')'
			return "\<ESC>cf".l:close_char
		else
			" if followed by other characters instead of ')'
			return "\<BS>"
		endif
	else
		return "\<BS>"
	endif
endfunction

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-plug
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/vimfiles/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
"Plug 'junegunn/vim-easy-align'
Plug 'vim-syntastic/syntastic'
Plug 'altercation/vim-colors-solarized'
Plug 'ludovicchabant/vim-gutentags'
Plug 'skywind3000/gutentags_plus'
Plug 'vim-scripts/CRefVim'
Plug 'w0rp/ale'
Plug 'mhinz/vim-signify'
"Plug 'vim-scripts/UltiSnips'
Plug 'octol/vim-cpp-enhanced-highlight'
"Plug 'vim-scripts/DoxygenToolkit.vim'
Plug 'DerekTan/DoxygenToolkitForRainbow'
Plug 'inkarkat/vim-mark'
Plug 'terryma/vim-multiple-cursors'
Plug 'Ervandew/supertab'
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'luochen1990/rainbow'
Plug 'rickhowe/spotdiff.vim'

" If you don't have nodejs and yarn
" use pre build
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() } }

" Any valid git URL is allowed
"Plug 'https://github.com/junegunn/vim-github-dashboard.git'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'majutsushi/tagbar', { 'on': 'TagbarToggle' }
Plug 'vim-scripts/a.vim', { 'on' : 'A' }
"Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'Yggdroot/LeaderF', { 'do': '.\install.bat' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
"Plug 'fatih/vim-go', { 'tag': '*' }

" Plugin options
"Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

" Plugin outside ~/.vim/plugged with post-update hook
"Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Unmanaged plugin (manually installed and updated)
"Plug '~/my-prototype-plugin'

" Initialize plugin system
call plug#end()

" Plug Commands
	"PlugInstall [name ...] [#threads]	Install plugins
	"PlugUpdate [name ...] [#threads]	Install or update plugins
	"PlugClean[!]	Remove unused directories (bang version will clean without prompt)
	"PlugUpgrade	Upgrade vim-plug itself
	"PlugStatus	Check the status of plugins
	"PlugDiff	Examine changes from the previous update and the pending changes
	"PlugSnapshot[!] [output path]	Generate script for restoring the current snapshot of the plugins


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plugin settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" auto-load tags file
" attention: use ".tags" instead of "tags" for convenient
" --./.tags - search from the file's directory
" --; means search parent firectory recursively
" --.tags means search from ":pwd" directory
set tags=./.tags;,.tags

nnoremap <C-]> :ts <C-R>=expand("<cword>")<CR><CR>

"------------------------------
" for gtags
" use gtags for C/C++/Java, use pygments for other languages
let $GTAGSLABEL = 'native-pygments'
let $GTAGSCONF = $HOME.'/vimfiles/gtags/share/gtags/gtags.conf'

"------------------------------
"for NERDTree
noremap <F3> :NERDTreeToggle<CR>

"------------------------------
"for gutentags
" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project', '.vs']

" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'

" 同时开启 ctags 和 gtags 支持：
let g:gutentags_modules = []
if executable('ctags')
	let g:gutentags_modules += ['ctags']
endif
if executable('gtags-cscope') && executable('gtags')
	let g:gutentags_modules += ['gtags_cscope']
endif

" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags

" show tag generation progress in status-line
set statusline+=%{gutentags#statusline()}

" 配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
" 如果使用 universal ctags 需要增加下面一行
let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']

" 禁用 gutentags 自动加载 gtags 数据库的行为，否则
let g:gutentags_auto_add_gtags_cscope = 0

" 查看 gtags 的错误输出,debug only：
let g:gutentags_define_advanced_commands = 0

" debug
let g:gutentags_trace = 0

" 检测 ~/.cache/tags 不存在就新建
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif

"------------------------------
" for gutentags_plus
" 0 or s: Find this symbol
" 1 or g: Find this definition
" 2 or d: Find functions called by this function
" 3 or c: Find functions calling this function
" 4 or t: Find this text string
" 6 or e: Find this egrep pattern
" 7 or f: Find this file
" 8 or i: Find files #including this file
" 9 or a: Find places where this symbol is assigned a valu
" disable the default key maps
let g:gutentags_plus_nomap = 1
noremap <silent> <leader>gs :GscopeFind s <C-R><C-W><cr>
noremap <silent> <leader>gg :GscopeFind g <C-R><C-W><cr>
noremap <silent> <leader>gc :GscopeFind c <C-R><C-W><cr>
noremap <silent> <leader>gt :GscopeFind t <C-R><C-W><cr>
noremap <silent> <leader>ge :GscopeFind e <C-R><C-W><cr>
noremap <silent> <leader>gf :GscopeFind f <C-R>=expand("<cfile>")<cr><cr>
noremap <silent> <leader>gi :GscopeFind i <C-R>=expand("<cfile>")<cr><cr>
noremap <silent> <leader>gd :GscopeFind d <C-R><C-W><cr>
noremap <silent> <leader>ga :GscopeFind a <C-R><C-W><cr>

"------------------------------
" for Tagbar
nnoremap <silent> <F8> :TagbarToggle<CR>

"------------------------------
" for solarized
"colorscheme darkblue
if has('gui_running')
    set background=light
else
    set background=dark
endif
let g:solarized_italic=0
let g:solarized_contrast="high"
colorscheme solarized

"------------------------------
" for ale
"set runtimepath+=C:\Program\ Files\Cppcheck

let g:ale_linters = {
			\ 'c': ['cppcheck'],
			\}


let g:ale_linters_explicit = 1
let g:ale_completion_delay = 500
let g:ale_echo_delay = 20
let g:ale_lint_delay = 500
let g:ale_echo_msg_format = '[%linter%] %code: %%s'
let g:ale_lint_on_text_changed = 'normal'
let g:ale_lint_on_insert_leave = 1
"let g:airline#extensions#ale#enabled = 1

"let g:ale_c_gcc_options = '-Wall -O2 -std=c99'
"let g:ale_cpp_gcc_options = '-Wall -O2 -std=c++14'
let g:ale_c_cppcheck_options = ''
let g:ale_cpp_cppcheck_options = ''

"let g:ale_sign_error = "\ue009\ue009" "--invalid charicator
"hi! clear SpellBad
"hi! clear SpellCap
"hi! clear SpellRare
"hi! SpellBad gui=undercurl guisp=red
"hi! SpellCap gui=undercurl guisp=blue
"hi! SpellRare gui=undercurl guisp=magenta

"------------------------------
" for LeaderF
"let g:Lf_ShortcutF = '<c-p>'
"let g:Lf_ShortcutB = '<m-n>'
noremap <Leader>R :LeaderfMru<cr>
noremap <Leader>F :LeaderfFunction!<cr>
"noremap <m-n> :LeaderfBuffer<cr>
noremap <Leader>t :LeaderfTag<cr>
"let g:Lf_StlSeparator = { 'left': '', 'right': '', 'font': '' }
"
let g:Lf_RootMarkers = ['.project', '.root', '.svn', '.git']
let g:Lf_WorkingDirectoryMode = 'Ac'
let g:Lf_WindowHeight = 0.30
let g:Lf_CacheDirectory = expand('~/.vim/cache')
"let g:Lf_ShowRelativePath = 0
"let g:Lf_HideHelp = 1
"let g:Lf_StlColorscheme = 'powerline'
"let g:Lf_PreviewResult = {'Function':0, 'BufTag':0}

"------------------------------
" for markdown-preview
let g:mkdp_path_to_chrome = "C:\Program Files (x86)\Google\Chrome\Application\chrome.exe"

" set to 1, nvim will open the preview window after entering the markdown buffer
" default: 0
let g:mkdp_auto_start = 1

" set to 1, the nvim will auto close current preview window when change
" from markdown buffer to another buffer
" default: 1
let g:mkdp_auto_close = 1

" set to 1, the vim will refresh markdown when save the buffer or
" leave from insert mode, default 0 is auto refresh markdown as you edit or
" move the cursor
" default: 0
let g:mkdp_refresh_slow = 0

" set to 1, the MarkdownPreview command can be use for all files,
" by default it can be use in markdown file
" default: 0
let g:mkdp_command_for_global = 0

" set to 1, preview server available to others in your network
" by default, the server listens on localhost (127.0.0.1)
" default: 0
let g:mkdp_open_to_the_world = 0

" use custom IP to open preview page
" useful when you work in remote vim and preview on local browser
" more detail see: https://github.com/iamcco/markdown-preview.nvim/pull/9
" default empty
let g:mkdp_open_ip = ''

" specify browser to open preview page
" default: ''
let g:mkdp_browser = 'chrome'

" set to 1, echo preview page url in command line when open preview page
" default is 0
let g:mkdp_echo_preview_url = 0

" a custom vim function name to open preview page
" this function will receive url as param
" default is empty
let g:mkdp_browserfunc = ''

" options for markdown render
" mkit: markdown-it options for render
" katex: katex options for math
" uml: markdown-it-plantuml options
" maid: mermaid options
" disable_sync_scroll: if disable sync scroll, default 0
" sync_scroll_type: 'middle', 'top' or 'relative', default value is 'middle'
"   middle: mean the cursor position alway show at the middle of the preview page
"   top: mean the vim top viewport alway show at the top of the preview page
"   relative: mean the cursor position alway show at the relative positon of the preview page
" hide_yaml_meta: if hide yaml metadata, default is 1
" sequence_diagrams: js-sequence-diagrams options
let g:mkdp_preview_options = {
    \ 'mkit': {},
    \ 'katex': {},
    \ 'uml': {},
    \ 'maid': {},
    \ 'disable_sync_scroll': 0,
    \ 'sync_scroll_type': 'middle',
    \ 'hide_yaml_meta': 1,
    \ 'sequence_diagrams': {},
    \ 'flowchart_diagrams': {}
    \ }

" use a custom markdown style must be absolute path
" like '/Users/username/markdown.css' or expand('~/markdown.css')
let g:mkdp_markdown_css = ''

" use a custom highlight style must absolute path
" like '/Users/username/highlight.css' or expand('~/highlight.css')
let g:mkdp_highlight_css = ''

" use a custom port to start server or random for empty
let g:mkdp_port = ''

" preview page title
" ${name} will be replace with the file name
let g:mkdp_page_title = '「${name}」'

"<Plug>MarkdownPreview
"<Plug>MarkdownPreviewStop

nnoremap <F7> :MarkdownPreview<CR>
"nnoremap <F8> :MarkdownPreviewStop<CR>

"------------------------------
" for doxygenToolkit
nnoremap <F10>a :DoxAuthor<CR>
nnoremap <F10>f :Dox<CR>
nnoremap <F10>b :DoxBlock<CR>
let g:DoxygenToolkit_commentType = "Rainbow"
let g:DoxygenToolkit_authorName = "Dake Tan"
let g:DoxygenToolkit_licenseTag = "(c) Copyright 2004-2017 Mettler-Toledo. All Rights Reserved."

" The following 2 lines are optional.
let g:DoxygenToolkit_timezoneString = "CCT"
let g:DoxygenToolkit_projectString = "Rainbow"

"------------------------------
" for doxygenToolkit
let g:UltiSnipsExpandTrigger = '<tab>'
let g:UltiSnipsJumpForwardTrigger = '<tab>'
let g:UltiSnipsJumpBackwardTrigger = '<s-tab>'
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"------------------------------
" for personal use
" copy file name
nnoremap <C-F9> :let @+=expand("%:t")<CR>
" copy full path
nnoremap <C-F10> :let @+=expand("%:p")<CR>

" add or remove 'TODO' mark
nnoremap \td :call Todo()<CR>

function! Todo()
    let l:line = getline(line("."))
    " echom "Todo()"
    if match(l:line, '// TODO\s*$') < 0
        " if not end with '// TODO', append it
        " echom "Found"
        let l:line = substitute(l:line,'\s*$',"\t\t// TODO","")
    else
        " if this line is end with '// TODO', remove it
        " echom "Not found"
        let l:line = substitute(l:line,'\s*// TODO\s*$',"","")
    endif
    " echom l:line
    call setline('.', l:line)
    " call cursor(s:lnum, s:pos)
endfunction

"-----------------------------
" for copy to system clipboard
" copy a single line
nnoremap <Leader>yy :let @+=getline('.')<CR>
nnoremap <Leader>YY :let @+=getline('.')<CR>
" copy the word under the curser
nnoremap <Leader>yiw :let @+=expand('<cword>')<CR>

"-----------------------------
" open the folder contains the current file with explorer
nnoremap <C-F11> :!start explorer /e,%:p:h<CR>

" open cmd in current location
nnoremap <Leader>cmd :!start cmd /k %:p:h:8<CR>

" open powershell in current location
nnoremap <Leader>ps :!start powershell -noexit -command "& {cd %:p:h:8}"<CR>


