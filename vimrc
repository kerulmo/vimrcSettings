" An example for a vimrc file.
"
" Maintainer:	Bram Moolenaar <Bram@vim.org>
" Last change:	2006 Aug 12
"
" To use it, copy it to
"     for Unix and OS/2:  ~/.vimrc
"	      for Amiga:  s:.vimrc
"  for MS-DOS and Win32:  $VIM\_vimrc
"	    for OpenVMS:  sys$login:.vimrc

" When started as "evim", evim.vim will already have done these settings.
if v:progname =~? "evim"
  finish
endif


map <F2> :w!<ESC>
map <F5> :tabnew %<ESC>
map <F4> :E<ESC>
"map <F3> :sp<ESC>
map <F6> :vsp<ESC>
map <F9> :e!<ENTER>:set syntax=verilog_systemverilog<ENTER>
" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
"setfiletype verilog_systemverilog     " For setting Default Filetype Verilog
set nocompatible
set nu			" show number on the Left most side
set ruler
"set cursorline		" Highlight the horizontal line of cursor
"set cursorcolumn	" Highlight the veritical line of cursor
set noswapfile

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

"if has("vms")
"  set nobackup		" do not keep a backup file, use versions instead
"else
"  set backup		" keep a backup file
"endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" In an xterm the mouse should work quite well, thus enable it.
"set mouse=a

" This is an alternative that also works in block mode, but the deleted
" text is lost and it only works for putting the current register.
"vnoremap p "_dp

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
endif

" Only do this part when compiled with support for autocommands.
if has("autocmd")

  " Enable file type detection.
  " Use the default filetype settings, so that mail gets 'tw' set to 72,
  " 'cindent' is on in C files, etc.
  " Also load indent files, to automatically do language-dependent indenting.
  filetype plugin indent on

  " Put these in an autocmd group, so that we can delete them easily.
  augroup vimrcEx
  au!

  " For all text files set 'textwidth' to 78 characters.
  autocmd FileType text setlocal textwidth=78

  " When editing a file, always jump to the last known cursor position.
  " Don't do it when the position is invalid or when inside an event handler
  " (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  augroup END

else

  set autoindent		" always set autoindenting on

endif " has("autocmd")

" Convenient command to see the difference between the current buffer and the
" file it was loaded from, thus the changes you made.
command DiffOrig vert new | set bt=nofile | r # | 0d_ | diffthis
	 	\ | wincmd p | diffthis

source /usr/share/vim/current/macros/matchit.vim
runtime macros/matchit.vim

map <C-n> :NERDTreeToggle<CR>
" When new tab open with file which are not in CWD , then below command will
" change CWD to that file's directory in new tab
autocmd BufEnter * lcd %:p:h
set encoding=utf-8

" Scrolling
":map <M-Esc>[62~ <ScrollWheelUp>
":map! <M-Esc>[62~ <ScrollWheelUp>
":map <M-Esc>[63~ <ScrollWheelDown>
":map! <M-Esc>[63~ <ScrollWheelDown>
":map <M-Esc>[64~ <S-ScrollWheelUp>
":map! <M-Esc>[64~ <S-ScrollWheelUp>
":map <M-Esc>[65~ <S-ScrollWheelDown>
":map! <M-Esc>[65~ <S-ScrollWheelDown>
set mouse=a

"map <C-PageUp> :bp<CR>
"map <C-PageDown> :bn<CR>
map  [5~   :gt<CR>   " C-PageUp
map  [6~   :gT<CR>   " C-PageDown
cabbrev E Explore

"Airlines configuration"
let g:airline#extensions#branch#enabled = 1
let g:airline_statusline_ontop = 0
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_powerline_fonts = 1
"let g:airline_theme='random'
let g:airline_theme='jellybeans'
let g:airline#extensions#syntastic#enabled = 1
"let g:airline#extensions#tabline#left_sep =  ' '
"let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'unique_tail_improved'

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
"let g:airline_left_sep = '»'
"let g:airline_left_sep = '▶'
"let g:airline_right_sep = '«'
"let g:airline_right_sep = '◀'
"let g:airline_symbols.linenr = '␊'
"let g:airline_symbols.linenr = '␤'
"let g:airline_symbols.linenr = '¶'
"let g:airline_symbols.branch = '⎇'
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.paste = 'Þ'
"let g:airline_symbols.paste = '∥'
"let g:airline_symbols.whitespace = 'Ξ'

 "airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

"ctrlpvim configuration
let g:ctrlp_custom_ignore = 'regression\|target\|git\|denali\|GATEKEEPER\|results'

set laststatus=2


set term=xterm-256color
set ttymouse=xterm2
:nnoremap <Tab> :bnext<CR><CR>
:nnoremap <S-Tab> :bprevious<CR><CR>
:nnoremap <C-Z> :bdelete<CR><CR>

" gvimrc setting
set sw=4
"set tags+=~/.ctags
set tags+=tags,../tags,./tags

" better key bindings for UltiSnipsExpandTrigger
let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

if has("gui_running")
    set number
    set hlsearch
    set title
    set nocompatible
    set backspace=2
    set nobackup
    set nowritebackup
    filetype plugin on
    source /usr/share/vim/current/macros/matchit.vim
    runtime macros/matchit.vim
    "set tags=~/.ctags
    syntax on
    set cursorline        " Highlight the horizontal line of cursor
    set cursorcolumn    " Highlight the veritical line of cursor
    set ruler        " show the cursor position all the time
    set showcmd        " display incomplete commandsau BufWinEnter * silent loadview
    set dictionary+=/usr/share/dict/wordsset
    set completeopt=longest,menu,preview
    map <S-Insert> <MiddleMouse>
    map! <S-Insert> <MiddleMouse>
    nnoremap <NL> i<CR><ESC>
    set t_vb=
    set guifont=Ubuntu\ Mono\ 19
    "set guifont=Space\ Mono\ 16
    "set guifont=Source\ Code\ Pro\ For\ Powerline\ 19
    set guioptions-=m  "remove menu bar
    set guioptions-=T  "remove toolbar
    " Mapping Ctrl+N for Nerd tree view
    map <C-n> :NERDTreeToggle<CR>
    " How can I open a NERDTree automatically when vim starts up if no files were specified?
    autocmd StdinReadPre * let s:std_in=1
    autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

    " When new tab open with file which are not in CWD , then below command will
    " change CWD to that file's directory in new tab
    autocmd BufEnter * lcd %:p:h
    set encoding=utf-8

    " Setting color scheme , make sure vim-material is installed
    " Dark
    set background=dark
    colorscheme vim-material

    " Palenight
    "let g:material_style='palenight'
    "set background=dark
    "colorscheme vim-material

    " Oceanic
    "let g:material_style='oceanic'
    "set background=dark
    "colorscheme vim-material

    " Light
    "set background=light
    "colorscheme vim-material"

endif

" for no visual bell on esc
set noeb visualbell t_vb=
:autocmd BufWritePost * :redraw
:autocmd CursorMoved * :redraw

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

  " Make sure you use single quotes

  " Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
  Plug 'junegunn/vim-easy-align'

  " Any valid git URL is allowed
  Plug 'https://github.com/junegunn/vim-github-dashboard.git'

  " Multiple Plug commands can be written in a single line using | separators
  Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

  " On-demand loading
  Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
  Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

  " Using a non-master branch
  Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

  " Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
  Plug 'fatih/vim-go', { 'tag': '*' }

  " Plugin options
  Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }

  " Plugin outside ~/.vim/plugged with post-update hook
  "Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'

  Plug 'ctrlpvim/ctrlp.vim'
  Plug 'Shougo/denite.nvim'
  Plug 'roxma/nvim-yarp'
  Plug 'roxma/vim-hug-neovim-rpc'
  Plug 'majutsushi/tagbar'
  Plug 'vim-scripts/AutoComplPop'
  Plug 'tpope/vim-fugitive'

" Initialize plugin system
call plug#end()

" Make whitespace visible
"set list
"set listchars=tab:>-,trail:~,extends:>,precedes:<

" Make whitespace visible
"set list
"set listchars=tab:>-,trail:.
"highlight NonText guibg=#ff0000 guifg=#772222
"highlight SpecialKey guibg=#ff0000 guifg=#772222

" Markup lines over 80 characters
"highlight overlength ctermbg=red ctermfg=white guibg=#592929
"match overlength /\%80v.\+/

inoremap  <c-h>
cnoremap  <c-h>

" Debian-specific variation
inoremap <esc>[3~ <c-h>
cnoremap <esc>[3~ <c-h>
