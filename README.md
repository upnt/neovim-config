# neovim-config
has bulitin lsp and some plugins

## key mappings
let mapleader = "\<Space\>"

### insert mode
|   mappings   | move |
|:------------:|:----:|
|\<C-j\>| change to normal mode |

### terminal mode
|   mappings   | move |
|:------------:|:----:|
|\<C-j\>| change to normal mode |

### normal mode
|   mappings   | move |
|:------------:|:----:|
|\<ESC\>\<ESC\>| nohlsearch |
|\<Leader\>v| toggle vista |
|\<Leader\>t| open terminal |
|\<Leader\>f| open file on denite |
|\<Leader\>b| open buffer on denite |
|\<Leader\>s| choose denite source |
|\<Leader\>c| choose colorscheme on denite |
|\<Leader\>h| choose help on denite |
|\<Leader\>:| execute command on denite |
|\<Leader\>p| paste register on denite |
|\<Leader\>r| quickrun |

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
    - alexaandru/nvim-lspupdate
- deoplete plugins
    - Shougo/deoplete.nvim
    - deoplete-plugins/deoplete-lsp
- denite plugins
    - Shougo/denite.nvim
- other plugins
    - Shougo/deol.nvim
    - thinca/vim-quickrun
    - liuchengxu/vista.vim
    - itchyny/lightline.vim
    - flazz/vim-colorschemes
    - upnt/vim-hold-colorscheme

## Quick Start for lsp

1. edit lsp config in init.vim

For example

```vim
lua require'lspconfig'.pyright.setup{}
```

2. execute :LspUpdate
