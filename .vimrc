" Airline config (Must be set before loading plugin)
if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif
let g:airline_powerline_fonts = 1
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#bufferline#enabled = 1
let g:airline#extensions#tabline#show_buffers = 1
let g:airline#extensions#tabline#show_tabs = 1
let g:airline#extensions#tabline#buffer_min_count = 0
let g:airline#extensions#tabline#formatter = 'unique_tail'

" Vundle
" ===========================================================================
set nocompatible
filetype off
if has("win32")
    set rtp+=$HOME/Vim/bundle/Vundle.vim/
    let path='$HOME/Vim/bundle'
    call vundle#begin(path)
    set directory=.,$TEMP
else
    set rtp+=~/.vim/bundle/Vundle.vim/
    call vundle#begin()
endif

" Vundle plugins
Plugin 'VundleVim/Vundle.vim'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'tpope/vim-unimpaired'
Plugin 'embear/vim-localvimrc'
Plugin 'matchit.zip'
Plugin 'Valloric/MatchTagAlways'
Plugin 'python_match.vim'
Plugin 'tpope/vim-surround'
Plugin 'ciaranm/detectindent'
Plugin 'a.vim'
"Plugin 'honza/vim-snippets'
Plugin 'LaTeX-Box-Team/LaTeX-Box'
Plugin 'xuhdev/vim-latex-live-preview'
Plugin 'Lokaltog/powerline-fonts'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'junegunn/vim-easy-align'
Plugin 'bufkill.vim'
Plugin 'bling/vim-airline'
Plugin 'chrisbra/csv.vim'
Plugin 'flazz/vim-colorschemes'
Plugin 'xolox/vim-colorscheme-switcher'
Plugin 'gregsexton/VimCalc'
Plugin 'joonty/vdebug.git'
Plugin 'jaredly/vim-debug'
Plugin 'kien/ctrlp.vim'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'gregsexton/gitv'
Plugin 'vim-scripts/L9'
Plugin 'vim-scripts/YankRing.vim'
Plugin 'vim-scripts/gtk-vim-syntax'
"Plugin 'basilgor/vim-autotags'
"Plugin 'xolox/vim-easytags'
Plugin 'xolox/vim-misc'
Plugin 'yggdroot/indentline'
"Plugin 'wesleyche/SrcExpl'
Plugin 'godlygeek/csapprox'
Plugin 'klen/python-mode'
Plugin 'felixhummel/setcolors.vim'
Plugin 'haya14busa/incsearch.vim'
Plugin 'vim-scripts/IndentConsistencyCop'
Plugin 'vim-scripts/ingo-library'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'TaskList.vim'
"Plugin 'AsciiTable.vim'
Plugin 'CharTab'
Plugin 'tpope/vim-repeat'
Plugin 'DoxygenToolkit.vim'
"Plugin 'severin-lemaignan/vim-minimap'
Plugin 'ap/vim-css-color'
Plugin 'terryma/vim-expand-region'
Plugin 'wikitopian/hardmode'
Plugin 'BufOnly.vim'
"Plugin 'c.vim'
Plugin 'tpope/vim-dispatch'
Plugin 'unblevable/quick-scope'
Plugin 'Shougo/neocomplete.vim'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'

" OS dependent plugins
if has("X11")
    Plugin 'osyo-manga/vim-marching'
    Plugin 'rking/ag.vim'
    Plugin 'scrooloose/syntastic'
else
    Plugin 'runsisi/consolas-font-for-powerline'
    Plugin 'scrooloose/syntastic'
endif

call vundle#end()

" Interface settings
" ===========================================================================
set secure

set t_Co=256      " Enable 256-color mode
set guioptions=i  " Use vim icon in gui
set visualbell    " Disable bell in gui
set t_vb=         " Disable bell in terminal
set cursorline    " Highligt line under cursor
set t_ut=         " Fix corrupt background in tmux
set encoding=utf-8
set mouse=a
colorscheme neverland

" Popup menu configuration
highlight PmenuSel guibg=brown
highlight Pmenu guibg=Brown4

" Font configuration
if has("win32")
    set guifont=Powerline_Consolas:h8:cANSI
else
    "set guifont=Monospace\ 9
    "set guifont=Consolas\ 8
    set guifont=Ubuntu\ Mono\ derivative\ Powerline\ 11
endif

behave xterm

"Syntax settings
syntax on
filetype indent on
filetype plugin on

"Indent
set autoindent
set smartindent
set cindent

"Tabs
set ignorecase
set hidden
set tabstop=4
set ffs=unix,dos,mac
set expandtab
set shiftwidth=4

"Latex
let g:tex_flavor='latex'

set viminfo='100,f1
set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words
set complete-=k complete+=k

" Disable preview window
set completeopt-=preview

set hlsearch
set incsearch
set showcmd
set number
set nowrap
set wildmenu
set scrolloff=4
set sidescrolloff=4
set backspace=indent,eol,start
set foldmethod=indent
set foldnestmax=1
set foldlevelstart=99
set printencoding=cp852
set nopaste
set diffopt=vertical
set laststatus=2 "Show without split

" Swap and backup files
if has("win32")
    set backupdir=%TMP%
    set directory=%TMP%
else
    set backupdir=~/.vimbackup,/tmp
    set directory=~/.vimbackup,/tmp
endif


" Key bindings
" ===========================================================================

" Set mapleader to space
let mapleader = "\\"
map <space>        <leader>
map <space><space> <leader><leader>

" Other mappings
nmap <C-g>         :bnext<CR>
nmap <C-tab>       <ESC> :b#<cr>
nmap <F2>          :CtrlPMRUFiles<CR>
nmap <F3>          :NERDTreeToggle<CR>
nmap <F4>          :copen<CR>
nmap <F8>          :call Compile()
nmap <F12>         :nohlsearch<CR>
nmap <leader><F2>  :CtrlPMixed<CR>
nmap <leader><F3>  :TagbarToggle<CR>
nmap <leader><F4>  :cclose<CR>
nmap <leader><F8>  :make clean
nmap <leader><tab> :b#<CR>
nmap <leader>b     :CtrlPBuffer<CR>
nmap <leader>k     :BD<cr>
nmap <leader>n     :cnext<CR>
nmap <leader>p     :cprev<CR>
nmap <leader>§     :set rnu! rnu? <cr>

" Put cursor in a better position after a yank
vmap y ygv<Esc>

" Expand / decrease selection
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

" Exit instert mode with öö
:imap öö <Esc>

" Better use for swedish keyboard
map ö [
map ä ]
map Ö {
map Ä }
map å =
map - /

" Block movements
map <leader>gB [{
map <leader>gb ]}
map <leader>gP [(
map <leader>gp ])
map <leader>gM [m
map <leader>gm ]m

" Window movements
map <C-h>     <C-W>h
map <C-j>     <C-W>j
map <C-k>     <C-W>k
map <C-l>     <C-W>l

" Disable arrow keys (habit breaking)
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" Start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


" Autocommands
" ===========================================================================

" Treat Qt stylesheets as CSS files
au BufNewFile,BufRead *.qss set filetype=css

" Autochdir confuses plugins. This is a workaround
au BufEnter * silent! lcd %:p:h

" Markdown syntax
au BufNewFile,BufReadPost *.md set filetype=markdown

" Disable parenthesis highlighting for python code
au FileType python let g:loaded_matchparen=1

" Always wrap in vimdiff
au VimEnter * if &diff | execute 'windo set wrap' | endif


" Functions
" ===========================================================================

func! MakeNormal()
	exec "set makeprg=make"
endfunc
func! MakeClean()
	exec "make clean"
endfunc
func! Compile()
    exec "w"
    exec "!gcc % -o %<"
endfunc
func! SudoWrite()
    exec "w !sudo tee % > /dev/null"
endfunc
func! ToggleMenu()
    exec "if &go=~#'m'<Bar>set go-=m<Bar>else<Bar>set go+=m<Bar>endif"
endfunc


" Plugin configurations 
" ===========================================================================

" VCSCommands standard mappings conflicts with NERD-commenter
let VCSCommandDisableMappings = 1

" PyMode Config
let g:pymode_options_colorcolumn = 0
let g:pymode_folding = 0
let g:pymode_lint = 1
let g:pymode_lint_on_write = 1
let g:pymode_lint_message = 1
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_ignore = "E501,E303,W0611,W391,E265,E401,W602,C901,W293"
let g:pymode_lint_slow_sync = 0
let g:pymode_trim_whitespaces = 0
let g:pymode_rope = 0

" Syntastic config
let g:syntastic_cpp_compiler_options = "-std=c++11 -Wall -Wextra -Wpedantic"
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1

" NeoComplete
let g:neocomplete#enable_at_startup = 1
" TAB-completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" :
            \ <SID>check_back_space() ? "\<TAB>" :
            \ neocomplete#start_manual_complete()
inoremap <expr><S-TAB>  pumvisible() ? "\<C-p>" :
            \ <SID>check_back_space() ? "\<S-TAB>" :
            \ neocomplete#start_manual_complete()
function! s:check_back_space() "{{{
    let col = col('.') - 1
    return !col || getline('.')[col - 1]  =~ '\s'
endfunction"}}}
imap <C-k> <Plug>(neosnippet_expand_or_jump)
smap <C-k> <Plug>(neosnippet_expand_or_jump)
xmap <C-k> <Plug>(neosnippet_expand_target)

" Speed up easytags
let g:easytags_syntax_keyword = 'always'

" Latexbox config
au FileType tex nnoremap <buffer> <leader><F3> :LatexTOCToggle<CR>
let g:LatexBox_split_side = 'rightbelow'
let g:LatexBox_latexmk_options = '-pdflatex="pdflatex -synctex=1 %O %S"'
let g:LatexBox_latexmk_async=1

" Faster CtrlP
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'

" Latex-suite requires grep to always return filename
set grepprg=grep\ -nH\ $*

" Set normal make (If changed by lvimrc)
set makeprg=make!

" Taglist
let Tlist_Use_Right_Window = 1

" Autopairs
let g:AutoPairsMapCR = 0

" Better color for matching parenthesis
au BufRead * hi MatchParen ctermbg=none ctermfg=yellow

" NERDTree
let g:NERDTreeShowHidden = 1
let g:NERDTreeAutoCenter = 1
" Auto refresh NERDTree
function! IsNTOpen()
  return exists("t:NERDTreeBufName") && (bufwinnr(t:NERDTreeBufName) != -1)
endfunction
func! NERDTreeRefresh()
    if &modifiable && IsNTOpen() && strlen(expand('%')) > 0 && !&diff
        NERDTreeFind
        wincmd p
    endif
endfunc
au BufEnter *.* call NERDTreeRefresh()

" Quickscope hack
let g:qs_enable = 0
let g:qs_enable_char_list = [ 'f', 'F', 't', 'T' ]
function! Quick_scope_selective(movement)
    let needs_disabling = 0
    if !g:qs_enable
        QuickScopeToggle
        redraw
        let needs_disabling = 1
    endif
    let letter = nr2char(getchar())
    if needs_disabling
        QuickScopeToggle
    endif
    return a:movement . letter
endfunction
for i in g:qs_enable_char_list
	execute 'noremap <expr> <silent>' . i . " Quick_scope_selective('". i . "')"
endfor
