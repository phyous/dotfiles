syntax enable

" Set line numbers
set number

" Inclusive search
set incsearch

" Set backspace behavior to act "normally" - in case there are issues deleting
set backspace=indent,eol,start

" Set color sheme - https://github.com/morhetz/gruvbox 
colorscheme gruvbox
"colorscheme afterglow

" vim-plug setup
call plug#begin('~/.vim/plugged')

" automatic closing of quotes, parenthesis, brackets, etc
Plug 'Raimondi/delimitMate'

" Support for editorconfig.org - spacing for file types
Plug 'editorconfig/editorconfig-vim'

" Indent lines for tabs
" :IndentGuidesToggle to turn off/on
Plug 'nathanaelkane/vim-indent-guides'

" fzf - fuzzy finder - https://github.com/junegunn/fzf#as-vim-plugin
" brew install fzf first for this to work
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" Initialize plugin system
call plug#end()

" FZF Config
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

