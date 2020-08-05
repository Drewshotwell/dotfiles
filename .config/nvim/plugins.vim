" Vim-Plug files
" Go to https://github.com/junegunn/vim-plug
" and https://github.com/junegunn/vim-plug/wiki for help
call plug#begin('~/.config/nvim/plugged')

" Conquer of Completion
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" HIE
Plug 'autozimu/LanguageClient-neovim', {
    \ 'branch': 'next',
    \ 'do': './install.sh'
    \ }
" Monokoi color theme
Plug 'crusoexia/vim-monokai'
" Spacegray color theme
Plug 'ajh17/spacegray.vim'
" Ayu color scheme
Plug 'ayu-theme/ayu-vim' " or other package manager

" Initialize plugin system
call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
