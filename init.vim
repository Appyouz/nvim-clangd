syntax on
filetype plugin indent on

set nu ts=2 sts=2 sw=2 et ai si rnu
set nu rnu ai si ts=2 sts=2 sw=2 et 
set mouse=a smarttab

call plug#begin()

Plug 'neoclide/coc.nvim' "coc for c++ completion
Plug 'jiangmiao/auto-pairs' " auto pairs 
Plug 'preservim/nerdtree' " NerdTree for toggling directories
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal



" themes start
Plug 'gruvbox-community/gruvbox' 
Plug 'vim-airline/vim-airline' 
Plug 'vim-airline/vim-airline-themes' "status bar
Plug 'kaicataldo/material.vim'
Plug 'dracula/vim'
Plug 'sickill/vim-monokai'
"themes end

"Fuzzy-Finder
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

"Tagbar
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons

call plug#end()
set encoding=UTF-8



" use <tab> for trigger completion and navigate to the next complete item
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~ '\s'
endfunction

inoremap <silent><expr> <Tab>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<Tab>" :
      \ coc#refresh()

" Themes
set termguicolors
color gruvbox

"NerdTree keybindings
inoremap <c-t> <Esc>:NERDTreeToggle<cr>
nnoremap <c-t> <Esc>:NERDTreeToggle<cr>
nnoremap <c-f> <Esc>:NERDTreeFocus<cr>
nnoremap <c-n> <Esc>:NERDTree<cr>
" nnoremap <c-l> <Esc>:call CocActionAsync('jumpDefinition')<cr>
nmap <F8> :TagbarToggle<CR>

nnoremap <c-p> :Files <cr>
let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

" air-line
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
