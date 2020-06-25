if has('mouse')
    set mouse=a
endif

if !has('nvim')
  set ttymouse=xterm2
endif

" Specify a directory for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes
" CoC
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" FZF
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

" Startify
Plug 'mhinz/vim-startify'

" Initialize plugin system
call plug#end()

syntax on

set noswapfile
set nobackup
set nowritebackup
set confirm
set autoread
set exrc
set secure
set encoding=utf-8
set clipboard=unnamedplus
set cursorline
set splitbelow splitright
set autoindent
set tabstop=3
set shiftwidth=4
set ignorecase
set smartcase
set incsearch
set hlsearch
set hidden
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes
set noshowmode
set number relativenumber
set t_Co=256

" fzf
nnoremap <C-p> :Files<CR>
nnoremap <C-g> :GFiles<CR>
nnoremap <C-f> :Rg!

" CoC
" GoTo code navigation.
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use `[g` and `]g` to navigate diagnostics
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" Symbol renaming.
nmap <leader>rn <Plug>(coc-rename)

" Show all diagnostics.
nnoremap <silent> <space>a  :<C-u>CocList diagnostics<cr>

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
inoremap <silent><expr> <c-space> coc#refresh()

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" coc packages
let g:coc_global_extensions = [
	\ 'coc-go',
	\ 'coc-tsserver',
    \ 'coc-eslint',
	\ 'coc-python',
	\ 'coc-rust-analyzer',
	\ 'coc-omnisharp',
	\ 'coc-clangd',
	\ 'coc-json',
	\ 'coc-yaml',
	\ 'coc-markdownlint',
	\ 'coc-html',
	\ 'coc-css',
	\ 'coc-xml',
	\ 'coc-git',
	\ 'coc-snippets',
	\ 'coc-highlight',
	\ 'coc-pairs'
\ ]
