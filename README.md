# neovim-config
has bulitin lsp and some plugins

## key mappings
let mapleader = "\<Space\>"
### normal mode
|   mappings   | move |
|:------------:|:----:|
|\<ESC\>\<ESC\>| nohlsearch |
|\<Leader\>v| toggle vista |

- on denite

| mappings  | move |
|:---------:|:----:|
|\<Leader\>f| open file |
|\<Leader\>c| execute command from history |
|\<Leader\>p| paste register |
|\<Leader\>s| choose colorscheme |
### insert mode
|   mappings   | move |
|:------------:|:----:|
|\<C-j\>| change to normal mode |
### terminal mode
|   mappings   | move |
|:------------:|:----:|
|\<C-j\>| change to normal mode |
### denite
|   mappings   | move |
|:------------:|:----:|
| l | do\_action |
| d | delete |
| p | preview |
| q | quit |
| i | open\_filter\_buffer |
| h | toggle\_select |

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
