"---------------------------------------------------------------
" General Settings
"---------------------------------------------------------------

set hidden
set clipboard=unnamedplus
set noerrorbells
set incsearch
set scrolloff=3
set sidescrolloff=3
set noswapfile
set tabstop=2
set shiftwidth=2
set expandtab
set autowrite
set smartindent
set mouse+=a
"set nowrap

set t_Co=256
set encoding=UTF-8

"---------------------------------------------------------------
" Plugins 
"---------------------------------------------------------------
"
set rtp +=~/.config/nvim
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
let g:plug_home = stdpath("data") . "/plugged"

call plug#begin(plug_home)
source ~/.config/nvim/plugins/telescope.vim
source ~/.config/nvim/plugins/nerdtree.vim
source ~/.config/nvim/plugins/transparent.vim
source ~/.config/nvim/plugins/fzf.vim
source ~/.config/nvim/plugins/prettier.vim

source ~/.config/nvim/plugins/vimcommentary.vim
source ~/.config/nvim/plugins/styledcomponents.vim
source ~/.config/nvim/plugins/neovimlspconfig.vim
source ~/.config/nvim/plugins/delimitmate.vim
source ~/.config/nvim/plugins/floaterm.vim

source ~/.config/nvim/plugins/typescript.vim
source ~/.config/nvim/plugins/javascript.vim


source ~/.config/nvim/plugins/gruvbox.vim

call plug#end()

let g:floaterm_keymap_new    = '<F1>'
let g:floaterm_keymap_kill = '<F2>'
let g:floaterm_keymap_next = '<F3>'


source ~/.config/nvim/lspservers.vim

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear


if has('termguicolors')
  set termguicolors
endif

colorscheme gruvbox-material 

set cursorline
hi CursorLine term=bold cterm=bold guibg=#333333

hi Directory guifg=#a8d2eb guibg=NONE
hi BufferTabpageFill guibg=none

hi BufferCurrent guifg=#E49C55 guibg=none
hi BufferInactive guibg=none 
hi BufferInactiveSign guibg=none
hi BufferCurrentSign guibg=none

let g:javascript_plugin_jsdoc = 1

" NerdTree minimal ui, better
let NERDTreeMinimalUI=1

command! -nargs=0 Prettier :CocCommand prettier.formatFile


if ! has('gui_running')
    set ttimeoutlen=10
    augroup FastEscape
        autocmd!
        au InsertEnter * set timeoutlen=0
        au InsertLeave * set timeoutlen=1000
    augroup END
endif

lua << EOF
require('telescope').setup{ defaults = { file_ignore_patterns = {"node_modules"} } }
EOF

"---------------------------------------------------------------
" Keymaps 
"---------------------------------------------------------------

let mapleader = " "

map gf :edit <cfile><cr>
nnoremap <C-p> <cmd>Telescope git_files<CR>
nnoremap <C-F> <cmd>Telescope find_files<CR>

nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprev<CR>

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

nnoremap <C-u> 10k
nnoremap <C-d> 10j

nnoremap <silent> <leader>, :BufferPrevious<CR>
nnoremap <silent> <leader>. :BufferNext<CR>
nnoremap <silent> <leader>/ :BufferClose<CR>
nnoremap <C-S> :update<cr>

nnoremap <leader>+ :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>

nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>
