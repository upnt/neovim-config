" Setting
let mapleader="\<Space>"
inoremap <silent><C-j> <ESC>
tnoremap <C-j> <C-\><C-n>

let g:python_host_prog=$HOME . '/anaconda3/envs/pynvim2/python.exe'
let g:python3_host_prog=$HOME . '/anaconda3/envs/pynvim3/python.exe'


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


" Config
set title
set cursorline
set hidden
set splitbelow
set helpheight=999
set iminsert=1

set number
set relativenumber
au filetype quickrun setl norelativenumber


" TODO: make plugin
if has("win64")
    au filetype tex nnoremap <silent><Leader>q :!start %:r.pdf<CR><CR>
elseif has("mac")
    au filetype tex nnoremap <silent><Leader>q :!open %:r.pdf<CR><CR>
else
    au filetype tex nnoremap <silent><Leader>q :echo "open-pdf don't support"<CR><CR>
endif

au BufNewFile,BufRead *.snip set filetype=snip

" Tab
nnoremap <silent>gr :tabprevious<CR>

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


" Folding
set foldlevel=6
set foldmethod=expr
set foldexpr=getline(v:lnum)=~'^\\s*$'&&getline(v:lnum+1)=~'\\S'?'<1':1


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


" Lsp
lua << EOF
require'lspconfig'.vimls.setup{}
require'lspconfig'.cmake.setup{}
require'lspconfig'.jsonls.setup{}
require'lspconfig'.pyls.setup{}
require'lspconfig'.texlab.setup{}
require'lspconfig'.dockerls.setup{}
require'lspconfig'.html.setup{}
require'lspconfig'.cssls.setup{}
require'lspconfig'.yamlls.setup{}
require'lspconfig'.sqlls.setup{}
EOF
