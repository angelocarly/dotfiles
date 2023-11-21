" NVIM configuration
" Angelo Carly

" Plugins {{{
call plug#begin('~/.vim/plugged')
" Language server
Plug 'prabirshrestha/async.vim'				" Allow async in vim
Plug 'prabirshrestha/vim-lsp'				" Enable native vim lsp
Plug 'mattn/vim-lsp-settings'				
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
Plug 'keremc/asyncomplete-clang.vim'
" Other Languages
Plug 'lervag/vimtex'
Plug 'tikhomirov/vim-glsl'
Plug 'sophacles/vim-processing'
" Navigation
Plug 'preservim/nerdtree'
Plug 'flw-cn/vim-nerdtree-l-open-h-close'
Plug 'liuchengxu/vista.vim' 				" LSP browser
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'					" Make fzf search through entire git project
" Editor
Plug 'justinmk/vim-sneak' 					" Jump quickly to a word
Plug 'tpope/vim-surround' 					" Auto surround apotrophes
Plug 'raimondi/delimitmate' 				" Auto close brackets
Plug 'machakann/vim-highlightedyank'		" Mark the region you yanked
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'} " Highlighting for lots of languages
" Colors and design
Plug 'vim-airline/vim-airline' 				" Clean statusbar
Plug 'vim-airline/vim-airline-themes'
Plug 'dylanaraps/wal.vim'
Plug 'rafi/awesome-vim-colorschemes'
let g:vimtex_compiler_progname = 'nvr'
call plug#end()
" }}}

" Colors and theming {{{
let g:airline#extensions#tabline#enabled = 1
let g:airline_theme='atomic'
colorscheme happy_hacking
set t_Co=256
syntax on
" }}}

" Editor settings {{{
set foldmethod=marker
set foldmarker={{{,}}}
set mouse=a
set number
set relativenumber
set hlsearch
set scrolloff=5
set tabstop=4
set softtabstop=0
"set expandtab
set smarttab
set shiftwidth=4
set ignorecase
set hidden
set list
set listchars=tab:\>\ ,trail:-
" }}}

" Keybinds {{{
inoremap kj <Esc>  
map <C-n> :NERDTreeToggle<CR>
" fzf
nnoremap <leader><leader> :GFiles<CR>
nnoremap <leader>fi       :Files<CR>
nnoremap <leader>C        :Colors<CR>
nnoremap <leader><CR>     :Buffers<CR>
nnoremap <leader>fl       :Lines<CR>
nnoremap <leader>m        :History<CR>

" . autocompletion ?
function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Asyncomplete binding
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? "\<C-y>" : "\<cr>"
imap <c-space> <Plug>(asyncomplete_force_refresh)
" }}}

" LUA configuration {{{
" Treesitter - highlighting and folding
lua <<EOF
require'nvim-treesitter.configs'.setup {
	ensure_installed = { "c", "rust" }
}
EOF
" }}}
