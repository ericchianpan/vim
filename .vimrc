set encoding=utf-8
set tabstop=4
set shiftwidth=4
set expandtab
set nu
set ruler
set incsearch 
set ai
set hlsearch 
set cursorline
set nowrap
set nocompatible
set cindent
set backspace=indent,eol,start
set completeopt=longest,menu    
set tags=./tags,./TAGS,tags;~,TAGS;~

" bakup
set backup
set backupext=.bak
set backupdir=~/.vim/vimbak

filetype off
filetype indent on 
filetype plugin on

" syntax
syntax enable 
set t_Co=256
" set background=light
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
" let g:seoul256_background = 236
" colorscheme seoul256

" inoremap
" inoremap ( ()<LEFT>
" inoremap [ []<LEFT>
" inoremap { {}<LEFT>
" inoremap ' ''<LEFT>
" inoremap " ""<LEFT>

" plugin
call plug#begin('~/.vim/plugged')
Plug 'scrooloose/nerdcommenter'
Plug 'scrooloose/nerdtree'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'Rip-Rip/clang_complete'
Plug 'ervandew/supertab'
Plug 'honza/vim-snippets'
Plug 'SirVer/ultisnips'
Plug 'w0rp/ale'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'majutsushi/tagbar'
call plug#end()

let g:NERDSpaceDelims = 1
let mapleader=";"
vmap <C-_> <leader>c<Space> 
nmap <C-_> <leader>c<Space> 
nmap <tab> :tabnext<CR> 
nmap <C-P> :FZF<CR>

let g:fzf_action = {
            \ 'ctrl-t': 'tab split',
            \ 'ctrl-x': 'split',
            \ 'ctrl-v': 'vsplit' }

" ultisnips/snippets
let g:UltiSnipsExpandTrigger="<C-E>"

" clang and snippets
let g:clang_snippets=1
let g:clang_conceal_snippets=1
let g:clang_snippets_engine='ultisnips'

" ale
let g:ale_sign_error = '✗'
let g:ale_sign_warning = '!'
" let g:airline#extensions#ale#enabled = 1
" let g:ale_set_loclist = 0
" let g:ale_set_quickfix = 1
" let g:ale_sign_column_always = 1
let g:ale_echo_msg_error_str = 'E'
let g:ale_echo_msg_warning_str = 'W'
let g:ale_echo_msg_format = '[%linter%] %s [%severity%]'
let g:ale_set_highlights = 0
" highlight ALEWarning ctermbg=DarkMagenta
" let g:airline#extensions#ale#enabled = 1
" let g:airline_section_warning = '%{ALEGetStatusLine()}'
" let g:airline_section_error = '%{ALEGetError()}'
" let g:airline_section_warning = '%{ALEGetWarning()}'

" airline
" let g:airline#extensions#tabline#enabled = 1

" NERDTree
map <C-n> :NERDTreeToggle<CR>
let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'

" tagbar
nmap <C-z> :TagbarToggle<CR>

