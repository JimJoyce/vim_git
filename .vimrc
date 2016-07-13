set nocompatible              " be iMproved, required
filetype off                  " required


source ~/.vim/bundle/colorstepper/colorstepper.vim

map <F3> :NERDTreeToggle<CR>


" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin   'VundleVim/Vundle.vim'
Plugin   'scrooloose/syntastic'
Plugin   'tpope/vim-surround'
Plugin   'kien/ctrlp.vim'
Plugin   'scrooloose/nerdcommenter'
Plugin   'airblade/vim-gitgutter'
Plugin   'valloric/youcompleteme'
Plugin   'thinca/vim-quickrun'
Plugin   'jistr/vim-nerdtree-tabs'
Plugin   'kien/rainbow_parentheses.vim'
Plugin   'junegunn/vim-easy-align'
Plugin   'raimondi/delimitmate'
Plugin   'easymotion/vim-easymotion'
Plugin   'slim-template/vim-slim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin   'tpope/vim-fugitive'
Plugin   'luochen1990/rainbow'
" plugin from http://vim-scripts.org/vim/scripts.html
" Git plugin not hosted on GitHub
Plugin   'wincent/command-t'
" git repos on your local machine (i.e. when working on your own plugin)
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin   'rstacruz/sparkup', {'rtp': 'vim/'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
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

filetype plugin indent on
set grepprg=grep\ -nH\ $*
let g:tex_flavor="latex"
let g:rainbow_active = 1
set modeline
set shell=/bin/zsh
set number
set pastetoggle=<F2>
syntax on
syntax enable
au BufNewFile,BufRead *.m set filetype=matlab
set shiftwidth=3
set tabstop=3
set confirm
set expandtab
"set noswapfile
set softtabstop=3
set autoindent
set nostartofline
set ignorecase
set smartcase
set mouse=a
set ruler
"set background=dark
set hlsearch
set incsearch
set showmatch
set hidden
set autowriteall
set wildmenu
set updatetime=250
set undofile
set wildmode=list:longest,full
set showcmd
set cmdheight=1
set backupdir=./.backup,.,/tmp
set directory=.,./.backup,/tmp
"set history=100000
"set scrolloff=5               " keep at least 5 lines above/below
"set sidescrolloff=5           " keep at least 5 lines left/right
set path=.,,**
nmap j gj
nmap k gk
nmap \q nohlsearch
let g:rainbow_active = 1

" set ctrl-P settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

"set easy motion settings
" <Leader>f{char} to move to {char}
map <Leader>f <Plug>(easymotion-bd-f)
nmap <Leader>f <Plug>(easymotion-overwin-f)

" s {char}{char} to move to {char}{char}
nmap s <Plug>(easymotion-overwin-f2)

" Move to line
map <Leader>L <Plug>(easymotion-bd-jk)
nmap <Leader>L <Plug>(easymotion-overwin-line)

" move to word
map <Leader>w <Plug>(easymotion-bd-w)
nmap <Leader>w <Plug>(easymotion-overwin-w)


" set gitgutter settings
let g:gitgutter_highlight_lines = 1

" set easy-align options
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)



" set rainbow-parentheses options
let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

"highlight current line
set cul
hi CursorLine term=none ctermbg=3

set rtp+=/Users/saforem2/powerline/bindings/vim


" Make cursor move as expected with wrapped lines
"inoremap <Down> <C-o>gj
"inoremap <Up>< <C-o>gk


colorscheme molokai
let g:airline_powerline_fonts =1
set laststatus=2


""""""""""""""""""""""""""""""""
" Move a line of text using ALT+[jk]


cmap W w
cmap WQ wq
cmap wQ wq
cmap Q q
cmap Tabe tabe
cmap w!! w !sudo tee % >/dev/null
nore ; :
nore , ;





" Next Tab
nnoremap <silent> <C-Right> :tabnext<CR>

" Previous Tab
nnoremap <silent> <C-Left> :tabprevious<CR>

" New Tab
nnoremap <silent> <C-t> :tabnew<CR>

" Rotate Color Scheme <F8>
nmap <F8> <Plug>ColorstepNext
nmap<F7> <Plug>ColorstepPrev
nmap<S-F8> <Plug>ColorstepReload

nnoremap <tab> %
vnoremap <tab> %

" Search mappings: These make it so that going to the next one in a search
" will center on the line it's found in
map N Nzz
map n nzz





" Automatically cd into the directory that the file is in
autocmd BufEnter * execute "chdir ".escape(expand("%:p:h"), ' ')

" Remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif




autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
  	 \   exe "normal! g`\"" |
 	 \ endif


" ViM autocommands for binary plist files
" Copyright (C) 2005 Moritz Heckscher
"
" Note: When a file changes externally and you answer no to vim's question if
" you want to write anyway, the autocommands (e.g. for BufWritePost) are still
" executed, it seems, which could have some unwanted side effects.
"
" This program is free software; you can redistribute it and/or modify
" it under the terms of the GNU General Public License as published by
" the Free Software Foundation; either version 2 of the License, or
" (at your option) any later version.
"
" This program is distributed in the hope that it will be useful,
" but WITHOUT ANY WARRANTY; without even the implied warranty of
" MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
" GNU General Public License for more details.
augroup plist
  " Delete existing commands (avoid problems if this file is sourced twice)
  autocmd!

  " Set binary mode (needs to be set _before_ reading binary files to avoid
  " breaking lines etc; since setting this for normal plist files doesn't
  " hurt and it's not yet known whether or not the file to be read is stored
  " in binary format, set the option in any case to be sure).
  " Do it before editing a file in a new buffer and before reading a file
  " into in an existing buffer (using ':read foo.plist').
  autocmd BufReadPre,FileReadPre *.plist set binary


" Mappings to access buffers (don't use "\p" because a
" delay before pressing "p" would accidentally paste).
" \l       : list buffers
" \b \f \g : go back/forward/last-used
" \1 \2 \3 : go to buffer 1/2/3 etc
nnoremap <Leader>l :ls<CR>
nnoremap <Leader>k :bp<CR>
nnoremap <Leader>j :bn<CR>
nnoremap <Leader>g :e#<CR>
nnoremap <Leader>1 :1b<CR>
nnoremap <Leader>2 :2b<CR>
nnoremap <Leader>3 :3b<CR>
nnoremap <Leader>4 :4b<CR>
nnoremap <Leader>5 :5b<CR>
nnoremap <Leader>6 :6b<CR>
nnoremap <Leader>7 :7b<CR>
nnoremap <Leader>8 :8b<CR>
nnoremap <Leader>9 :9b<CR>
nnoremap <Leader>0 :10b<CR>
" It's useful to show the buffer number in the status line.
set laststatus=2 statusline=%02n:%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P

let c = 1
while c <= 99
  execute "nnoremap " . c . "gb :" . c . "b\<CR>"
  let c += 1
endwhile

nnoremap <F4> :buffers<CR>:buffer<Space>

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
let g:syntastic_python_python_exec = '/usr/bin/python2.7/'
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 1






let g:macvim_transparency_step = 10
let g:macvim_transparency_roller = [0,50,100]

" transparent
nmap <D-Up>		<Plug>(macvim-transparency-inc)
" opaque
nmap <D-Down>	<Plug>(macvim-transparency-dec)
"roll from
nmap <F10>		<Plug>(macvim-transparency-roll)

imap <D-Up>		<Plug>(macvim-transparency-inc)
imap <D-Down>	<Plug>(macvim-transparency-dec)
imap <F10>		<Plug>(macvim-transparency-roll)


xmap <D-Up>		<Plug>(macvim-transparency-inc)
xmap <D-Down>	<Plug>(macvim-transparency-dec)
xmap <F10>		<Plug>(macvim-transparency-roll)

let g:rainbow_conf = {
    \   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
    \   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
    \   'operators': '_,_',
    \   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold'],
    \   'separately': {
    \       '*': {},
    \       'tex': {
    \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
    \       },
    \       'lisp': {
    \           'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick', 'darkorchid3'],
    \       },
    \       'vim': {
    \           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/', 'start=/{/ end=/}/ fold', 'start=/(/ end=/)/ containedin=vimFuncBody', 'start=/\[/ end=/\]/ containedin=vimFuncBody', 'start=/{/ end=/}/ fold containedin=vimFuncBody'],
    \       },
    \       'html': {
    \           'parentheses': ['start=/\v\<((area|base|br|col|embed|hr|img|input|keygen|link|menuitem|meta|param|source|track|wbr)[ >])@!\z([-_:a-zA-Z0-9]+)(\s+[-_:a-zA-Z0-9]+(\=("[^"]*"|'."'".'[^'."'".']*'."'".'|[^ '."'".'"><=`]*))?)*\>/ end=#</\z1># fold'],
    \       },
    \       'css': 0,
    \   }
    \}
execute pathogen#infect()
call pathogen#helptags()
