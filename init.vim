" Setting
let mapleader="\<Space>"
inoremap <C-j> <ESC>
tnoremap <C-j> <C-\><C-n>

" Dein Setting
if &compatible
    set nocompatible               " Be iMproved
endif

" Required:
set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state($HOME . '/.cache/dein')
    call dein#begin($HOME . '/.cache/dein')
    " Let dein manage dein
    " Required:
    call dein#add('Shougo/dein.vim')
    call dein#add('wsdjeg/dein-ui.vim')
    call dein#load_toml(stdpath('config') . '/dein.toml')
    
    " Required:
    call dein#end()
    call dein#save_state()
endif

filetype plugin indent on
syntax on


" Config
set title
set number
set relativenumber
set cursorline
set hidden


" Search
nnoremap <silent><ESC><ESC> :nohlsearch<CR>
set hlsearch
set incsearch
set ignorecase
set smartcase


" Indent
set autoindent
set smartindent
set expandtab
set shiftwidth=4
set tabstop=4
set softtabstop=4


" folding
set foldlevel=6
set foldmethod=expr
set foldexpr=getline(v:lnum)=~'^\\s*$'&&getline(v:lnum+1)=~'\\S'?'<1':1


" undo
if has('persistent_undo')
	let undo_path = expand('~/.cache/undo')
	if !isdirectory(undo_path)
		call mkdir(undo_path, "p")
	endif
	exe 'set undodir=' .. undo_path
	set undofile
endif
