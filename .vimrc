" Specify a directory for plugins
call plug#begin('~/.config/nvim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'Nopik/vim-nerdtree-direnter'
Plug 'junegunn/fzf.vim'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'preservim/nerdcommenter'
Plug 'vim-python/python-syntax'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'airblade/vim-gitgutter'
Plug 'chrisbra/Colorizer'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'terryma/vim-multiple-cursors'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'mhinz/vim-startify'
Plug 'junegunn/goyo.vim'
Plug 'junegunn/limelight.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'iamcco/markdown-preview.nvim', { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug']}

call plug#end()

" Map keybindings


" use ;; for escape
" http://vim.wikia.com/wiki/Avoid_the_escape_key
inoremap ;; <Esc>
nnoremap <silent> <space> :NERDTreeToggle<CR>

" settings
set mouse=a
let mapleader=";"
set number
colorscheme nord
hi LineNr ctermfg=4
hi CursorLine cterm=NONE ctermbg=1=6
hi CursorLineNr ctermbg=NONE ctermfg=5 cterm=NONE

" python syntax highlighting
let g:python_highlight_all = 1

" coc
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" use ctrl + slash to comment
nmap <C-_> <leader>c<Space>
vmap <C-_> <leader>c<Space>

" compile and open laTex
autocmd FileType tex noremap <buffer> <F5> :update<bar>!xelatex % && zathura %:r.pdf<CR>

" NERDTreeToggle
let NERDTreeQuitOnOpen=1
let NERDTreeMapActivateNode='<ENTER>'
" changed the key from '<ENTER>' to 'l' inside of the: vim-nerdtree-direnter plugin
let NERDTreeMapOpenInTab='l'

" Goyo + Limelight (Distraction free mode)
let g:limelight_conceal_ctermfg = 'darkGrey'
autocmd! User GoyoEnter Limelight
autocmd! User GoyoLeave Limelight!
