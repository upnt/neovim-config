let mapleader="\<Space>"

let g:python_host_prog=$HOME . '/anaconda3/envs/pynvim2/python.exe'
let g:python3_host_prog=$HOME . '/anaconda3/envs/pynvim3/python.exe'


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

inoremap <C-j> <ESC>
tnoremap <C-j> <C-\><C-n>
nnoremap <silent><ESC><ESC> :nohlsearch<CR>

set number
set relativenumber
set cursorline

set confirm
set hidden

set hlsearch
set incsearch
set ignorecase
set smartcase
set wrapscan

if has('persistent_undo')
	let undo_path = expand('~/.cache/undo')
	if !isdirectory(undo_path)
		call mkdir(undo_path, "p")
	endif
	exe 'set undodir=' .. undo_path
	set undofile
endif
