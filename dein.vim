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
  call dein#load_toml(stdpath('config') . '/deinft.toml')
  call dein#load_toml(stdpath('config') . '/deinlazy.toml', {'lazy': 1})
  call dein#load_toml(stdpath('config') . '/ddc.toml', {'lazy': 1})
  call dein#load_toml(stdpath('config') . '/syntax.toml', {'lazy': 1})
  
  " Required:
  call dein#end()
  call dein#save_state()
endif
