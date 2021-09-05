" Setting
let mapleader="\<Space>"
let maplocalleader=","
inoremap <silent><C-;> <ESC>
tnoremap <C-;> <C-\><C-n>
nnoremap <silent>gr :tabprevious<CR>
nnoremap <silent><ESC><ESC> :nohlsearch<CR>

let g:python_host_prog='C:\tools\Anaconda3\envs\pynvim2\python.exe'
let g:python3_host_prog='C:\tools\Anaconda3\envs\pynvim3\python.exe'
" font
if exists('g:neovide')
    let g:neovide_cursor_vfx_mode = "ripple"
    let g:neovide_transparency=0.8
    let &guifont = 'PlemolJP35 Console NF:h18'
elseif exists('g:goneovim')
    let &guifont = 'PlemolJP35 Console NF:h14'
else
    let &guifont = 'PlemolJP35 Console NF:h18'
endif

if !exists('g:vscode')

    " Dein Setting
    if &compatible
        set nocompatible               " Be iMproved
    endif
    
    " Required:
    set runtimepath+=$HOME/.cache/dein/repos/github.com/Shougo/dein.vim
    set runtimepath+=$HOME/.vim/bundle/vim-snippets
    
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
    
    if has('termguicolors')
      set termguicolors
    endif
    
    augroup MySetting
        au!
        au filetype quickrun setl norelativenumber
    augroup END
    
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
    
    
    " Folding
    set foldlevel=6
    set foldmethod=expr
    set foldexpr=getline(v:lnum)=~'^\\s*$'&&getline(v:lnum+1)=~'\\S'?'<1':1

    " Config
    set number
    
    set title
    set cursorline
    set hidden
    set splitbelow
    set helpheight=25
    set iminsert=1
    set ambiwidth=double
    set pumblend=20
    " Encoding
    set encoding=utf-8
    set fileencodings=utf-8,sjis
    set fileformats=unix,dos,mac
    
    " Undo
    if has('persistent_undo')
    	let undo_path = expand('~/.cache/undo')
    	if !isdirectory(undo_path)
    		call mkdir(undo_path, "p")
    	endif
    	exe 'set undodir=' .. undo_path
    	set undofile
    endif

endif
