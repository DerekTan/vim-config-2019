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
"t������ textwidth �Զ����У�
"c���ڣ�����Դ�����еģ�ע�����Զ����У�������ʵ�ע����ʼ�ַ���
"r������ģʽ����ע���м���س�ʱ��������ʵ�ע����ʼ�ַ���
"q������ʹ�á�gq�������ע�ͽ��и�ʽ����
"n��ʶ�����б�����е���һ�е����������ֺ�Ŀհ׾������롰2����ͻ����Ҫ��autoindent������
"2��ʹ��һ�εĵڶ��е���������ʽ���ı���
"l���ڵ�ǰ�г��ȳ��� textwidth ʱ�����Զ����¸�ʽ����
"m���ڶ��ֽ��ַ����������У��������ر���Ч������ֻ�ڿհ��ַ������У���
"M����ƴ������ʱ�����¸�ʽ�����������ֹ�ʹ�á�J����������ǰһ�еĽ�β���һ�еĿ�ͷ�Ƕ��ֽ��ַ����򲻲���ո񣬷ǳ��ʺ�����
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
" ������Զ�ʶ����ͨ������fileencodingsʵ�ֵġ�
" fileencodings��һ���ö��ŷָ����б��б��е�ÿһ����һ�ֱ�������ơ�
" �����Ǵ��ļ�ʱ��Vim��˳��ʹ��fileencodings�еı�����г��Խ��룬
" ����ɹ��Ļ�����ʹ�øñ��뷽ʽ���н��룬����fileencoding����Ϊ���ֵ�����ʧ�ܵĻ����ͼ���������һ�����롣
" ��ˣ�����������fileencodingsʱ��һ��Ҫ���ϸ�ı��뷽ʽ����ǰ�棬�ѿ��ɵı��뷽ʽ���ں��档
" ���磬latin1��һ�ַǳ����ɵı��뷽ʽ���κ�һ�ֱ��뷽ʽ�õ����ı�����latin1���н��룬�����ᷢ������ʧ�ܡ�
" ��Ȼ������õ��Ľ��Ҳ�ܿ��ܻ������롣
" ��ˣ�������latin1�ŵ�fileencodings�ĵ�һλ����ô���κ������ļ�������ʾ�����ˡ�
" �Ƽ�ʹ������fileencodings���ã�
set fileencodings=utf-8,gb2312,gbk,gb18030

" encoding��Vim�ڲ�ʹ�õ��ַ����뷽ʽ��
" Vim�ڲ����е�buffer���Ĵ������ű��е��ַ����ȣ�����ʹ��encoding���õı��롣
" ������뷽ʽ��Vim���ڲ����벻һ�£���ô���Ȱѱ���ת�����ڲ����롣
" ��������к����޷�ת��Ϊ�ڲ�������ַ�����ô��Щ�ַ��ͻᶪʧ��
" ��ˣ���ѡ��Vim�ڲ�����ʱ��һ��Ҫʹ��һ�ְ������㹻ǿ�ı��롣
" ����encodingѡ���漰��Vim�������ַ����ڲ���ʾ�����ֻ����Vim������ʱ������һ�Ρ�
" ��Vim�����������޸�encoding����ɷǳ�������⡣
" ���齫encoding����Ϊutf-8��ͬʱ��������ѡ��Ա����ڷ�UTF-8ϵͳ����Windows���£��˵���ϵͳ��ʾ�������룺
set encoding=utf-8
set langmenu=en_US
let $LANG = 'en_US'
source $VIMRUNTIME/delmenu.vim
source $VIMRUNTIME/menu.vim
" ���Ҫʹ�����Ĳ˵���������4���滻����������
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

"windows����������ã���������vim����Զ���󻯣�������ɾȥ��
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
"���˸��ɾ��һ��������ʱͬʱɾ����Ӧ��������
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
	let l:previous_char = l:line[col(".")-2] "ȡ�õ�ǰ���ǰһ���ַ�

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
" gutentags ��������Ŀ¼�ı�־��������Щ�ļ�/Ŀ¼����ֹͣ����һ��Ŀ¼�ݹ�
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project', '.vs']

" �����ɵ������ļ�������
let g:gutentags_ctags_tagfile = '.tags'

" ͬʱ���� ctags �� gtags ֧�֣�
let g:gutentags_modules = []
if executable('ctags')
	let g:gutentags_modules += ['ctags']
endif
if executable('gtags-cscope') && executable('gtags')
	let g:gutentags_modules += ['gtags_cscope']
endif

" ���Զ����ɵ� tags �ļ�ȫ������ ~/.cache/tags Ŀ¼�У�������Ⱦ����Ŀ¼
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags

" show tag generation progress in status-line
set statusline+=%{gutentags#statusline()}

" ���� ctags �Ĳ���
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
" ���ʹ�� universal ctags ��Ҫ��������һ��
let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']

" ���� gutentags �Զ����� gtags ���ݿ����Ϊ������
let g:gutentags_auto_add_gtags_cscope = 0

" �鿴 gtags �Ĵ������,debug only��
let g:gutentags_define_advanced_commands = 0

" debug
let g:gutentags_trace = 0

" ��� ~/.cache/tags �����ھ��½�
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
let g:mkdp_page_title = '��${name}��'

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


