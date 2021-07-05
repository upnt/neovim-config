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
|\<Leader\>v| tagbar |
|\<Leader\>f| file explorer |
|\<Leader\>d| denite file |
|\<Leader\>b| buffer |
|\<Leader\>t| terminal |
|\<Leader\>h| help |
|\<Leader\>:| command history |
|\<Leader\>p| register |

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
- plugin manager(Shougo/dein.nvim)
- plagin manager UI(wsdjeg/dein-ui.vim)
- complement(neoclide/coc.nvim)
- interface(Shougo/denite.nvim)
- terminal(Shougo/deol.nvim)
- filer(Shougo/defx.nvim)
- tagbar(liuchengxu/vista.vim")
- doc(vim-jp/vimdoc-ja)
- colorscheme(tomasr/molokai)
- visualize git(airblade/vim-gitgutter)
- git support(tpope/vim-fugitive)
