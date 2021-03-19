# neovim-config
has bulitin lsp and some plugins

## key mappings
let mapleader = "\<Space\>"
### normal mode
|   mappings   | move |
|:------------:|:----:|
|\<ESC\>\<ESC\>| nohlsearch |
|\<Leader\>v| toggle vista |
|\<Leader\>t| open terminal |
|\<Leader\>f| open file on denite |
|\<Leader\>c| execute command on denite |
|\<Leader\>p| paste register on denite |
|\<Leader\>s| choose colorscheme on denite |
|\<Leader\>r| quickrun |

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
    - thinca/vim-quickrun
    - liuchengxu/vista.vim
    - flazz/vim-colorschemes
    - itchyny/lightline.vim
    - upnt/vim-hold-colorscheme
