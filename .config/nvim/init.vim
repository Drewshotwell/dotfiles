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

" Initialize plugin system
call plug#end()

syntax on
" colorscheme monokai
colorscheme spacegray
set number
set mouse=a
set clipboard=unnamedplus

set ignorecase
set smartcase

" Keybindings for HIE
nnoremap <F5> :call LanguageClient_contextMenu()<CR>
map <Leader>lk :call LanguageClient#textDocument_hover()<CR>
map <Leader>lg :call LanguageClient#textDocument_definition()<CR>
map <Leader>lr :call LanguageClient#textDocument_rename()<CR>
map <Leader>lf :call LanguageClient#textDocument_formatting()<CR>
map <Leader>lb :call LanguageClient#textDocument_references()<CR>
map <Leader>la :call LanguageClient#textDocument_codeAction()<CR>
map <Leader>ls :call LanguageClient#textDocument_documentSymbol()<CR
