# neovim-config
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
|\<Leader\>f| filer |
|\<Leader\>d| project files |
|\<Leader\>b| buffer |
|\<Leader\>t| terminal |
|\<Leader\>h| help |
|\<Leader\>:| command history |
|\<Leader\>p| register |
|\<Leader\>r| markdown preveiw |

## plugins
- plugin manager
    - Shougo/dein.nvim
    - wsdjeg/dein-ui.vim
- complement
    - neoclide/coc.nvim
- terminal
    - Shougo/deol.nvim
- filer
    - Shougo/defx.nvim
- tagbar
    - liuchengxu/vista.vim
- colorscheme
    - sainnhe/sonokai
- git support
    - tpope/vim-fugitive
