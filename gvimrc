set number
set hlsearch
set title 
set nocompatible
set backspace=2
set nobackup
set nowritebackup
set sw=4
filetype plugin on
source /usr/share/vim/current/macros/matchit.vim
runtime macros/matchit.vim
set tags=~/.tags
syntax on
set cursorline        " Highlight the horizontal line of cursor
set cursorcolumn    " Highlight the veritical line of cursor
set ruler        " show the cursor position all the time
set showcmd        " display incomplete commandsau BufWinEnter * silent loadview
set dictionary+=/usr/share/dict/wordsset 
set completeopt=longest,menu,preview
"map <F4> :Dox<CR><Esc>
"map <F5> :DoxAuthor<CR><Esc>
"map <F3> :DoxTodo<CR><Esc>
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
map <C-m> :CtrlP<CR>
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
