# neovim-config
has bulitin lsp and some plugins

## key mappings
let mapleader = "\<Space\>"
### normal mode
|   mappings   | move |
|:------------:|:----:|
|\<ESC\>\<ESC\>| nohlsearch |
|\<Leader\>v| toggle vista |
|\<Leader\>f| open file on denite |
|\<Leader\>c| choose command from command history |
|\<Leader\>p| paste from register |
|\<Leader\>s| change colorscheme |
### insert mode
|   mappings   | move |
|:------------:|:----:|
|\<C-j\>| change to normal mode |
### terminal mode
|   mappings   | move |
|:------------:|:----:|
|\<C-j\>| change to normal mode |
### denite
  l: do\_action
  d: delete
  p: preview
  q: quit
  i: open\_filter\_buffer
  \<Space\>: toggle\_select

## plugins
- plugin manager
    - Shougo/dein.nvim
    - wsdjeg/dein-ui.vim
- lsp plugins
    - neovim/nvim-lsp
    - neovim/nvim-lspconfig
    - anott03/nvim-lspinstall
- deoplete plugins
    - Shougo/deoplete.nvim
    - deoplete-plugins/deoplete-lsp
- denite plugins
    - Shougo/denite.nvim
- other plugins
    - liuchengxu/vista.vim
