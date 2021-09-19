let mapleader="\<Space>"
let maplocalleader=","
inoremap <silent><C-;> <ESC>
tnoremap <C-;> <C-\><C-n>
nnoremap <silent>gr :tabprevious<CR>
nnoremap <silent><ESC><ESC> :nohlsearch<CR>
command! Setting :execute('edit ' . stdpath('config') . '/init.vim')

let g:python_host_prog='C:\tools\Anaconda3\envs\pynvim2\python.exe'
let g:python3_host_prog='C:\tools\Anaconda3\envs\pynvim3\python.exe'

" Undo
if has('persistent_undo')
  let undo_path = expand('~/.cache/undo')
  if !isdirectory(undo_path)
	call mkdir(undo_path, "p")
  endif
  exe 'set undodir=' .. undo_path
  set undofile
endif

" Font
if exists('g:neovide')
  let g:neovide_cursor_vfx_mode = "ripple"
  let g:neovide_transparency=0.8
  let &guifont = 'PlemolJP35 Console NF:h18'
elseif exists('g:goneovim')
  let &guifont = 'PlemolJP35 Console NF:h14'
else
  let &guifont = 'PlemolJP35 Console NF:h18'
endif

if has('termguicolors')
  set termguicolors
endif

if !exists('g:vscode')
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

  " Search
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
  
  " Encoding
  set encoding=utf-8
  set fileencodings=utf-8,sjis
  set fileformats=unix,dos,mac
  
  exe('source ' . stdpath('config') . '/dein.vim')
  filetype plugin indent on
  syntax on

endif
