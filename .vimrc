" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins

Plugin 'VundleVim/Vundle.vim'
Plugin 'jiangmiao/auto-pairs'

Plugin 'pangloss/vim-javascript'
let g:jsx_ext_required = 0 "not only work on jsx files

Plugin 'mxw/vim-jsx'

"Plugin 'mattn/emmet-vim'
"let g:user_emmet_leader_key='<Tab>'
" let g:user_emmet_settings = {
"  \  'javascript.jsx' : {
"    \      'extends' : 'jsx',
"    \  },
"  \}
"let g:user_emmet_mode='n'    "only enable normal mode functions.
"let g:user_emmet_mode='inv'  "enable all functions, which is equal to
"'let g:user_emmet_mode='a'    "enable all function in all mode.

Plugin 'w0rp/ale'
let g:ale_sign_error = '●' " Less aggressive than the default '>>'
let g:ale_sign_warning = '.'
let g:ale_lint_on_enter = 0 " Less distracting when opening a new file
let g:ale_lint_on_save = 1 " run on save
let g:ale_lint_on_text_changed = 0 " don't run on change
let g:ale_fixers = {'javascript':  [ 'eslint', 'prettier']}
let g:ale_linters = { 'javascript': ['eslint', 'flow', 'prettier'] }
" user config files
let g:ale_javascript_prettier_use_local_config = 1
" set Prettier up to run on save
let g:ale_fix_on_save = 1

Plugin 'vim-airline/vim-airline'

Plugin 'scrooloose/nerdtree'
map <C-n> :NERDTreeToggle<CR>
nmap ,n :NERDTreeFind<CR>
set wildignore+=*.pyc,*.o,*.obj,*.svn,*.swp,*.class,*.hg,*.DS_Store,*.min.*
let g:NERDTreeShowHidden=1
let NERDTreeRespectWildIgnore=1

Plugin 'xuyuanp/nerdtree-git-plugin'

" shows a git diff in the gutter
Plugin 'airblade/vim-gitgutter'
let g:gitgutter_override_sign_column_highlight = 0

Plugin 'SirVer/ultisnips'
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsSnippetsDir="~/UltiSnips"

" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

Plugin 'tpope/vim-fugitive'
set diffopt=vertical

Plugin 'junegunn/fzf'
Plugin 'junegunn/fzf.vim'
map <C-p> :GFiles<CR>
" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }
" Default fzf layout
let g:fzf_layout = { 'down': '~40%' }

Plugin 'mhartington/oceanic-next'
Plugin 'scrooloose/nerdcommenter'

call vundle#end() " required

set nocompatible " be iMproved, required
filetype off " required
set history=10000

" theme
syntax enable " enable syntax processing
if (has("termguicolors"))
  set termguicolors
 endif
let g:oceanic_next_terminal_bold = 1
let g:oceanic_next_terminal_italic = 1
colorscheme OceanicNext

" airline ale
function ALE() abort
    return exists('*ALEGetStatusLine') ? ALEGetStatusLine() : ''
endfunction
let g:airline_section_error = '%{ALE()}'
let g:airline_theme='oceanicnext'

filetype plugin indent on " required

set number " show line numbers

set tabstop=2 " tabs visual mode
set softtabstop=2 " tabs when editing
set shiftwidth=2 " size of indent
set expandtab " tabs are spaces

" move vertically by visual line
nnoremap j gj
nnoremap k gk

let mapleader="," " leader is comma
nnoremap <CAPS> <C>
" toggle gundo
nnoremap <leader>u :GundoToggle<CR> 

" ui config

"set cursorline " highlight current line
set wildmenu " visual autocomplete for command menu

" Search
set ignorecase smartcase " insensitive search
set incsearch " search as characters are entered
set hlsearch " highlight matches
nnoremap <leader><space> :nohlsearch<CR> " turn off search highlight
set rtp^=$HOME
