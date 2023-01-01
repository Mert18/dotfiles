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
set cursorline

set t_Co=256
set encoding=UTF-8

:silent! TroublesomeCommand

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
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'preservim/nerdtree'

Plug 'tribela/vim-transparent'

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'

Plug 'prettier/vim-prettier', { 'do': 'yarn install --frozen-lockfile --production' }

Plug 'tpope/vim-commentary'

Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

Plug 'neovim/nvim-lspconfig'
Plug 'hrsh7th/nvim-cmp'
Plug 'hrsh7th/cmp-nvim-lsp'
Plug 'saadparwaiz1/cmp_luasnip'
Plug 'L3MON4D3/LuaSnip'

Plug 'Raimondi/delimitMate'


Plug 'leafgarland/typescript-vim'
Plug 'peitalin/vim-jsx-typescript'
Plug 'pangloss/vim-javascript'
Plug 'MaxMEllon/vim-jsx-pretty'

Plug 'gruvbox-community/gruvbox'
Plug 'sainnhe/gruvbox-material'

call plug#end()

source ~/.config/nvim/configs/neovimlsp.vim
source ~/.config/nvim/configs/treesitter.vim
source ~/.config/nvim/configs/fzf.vim

autocmd BufWritePre *.js lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.jsx lua vim.lsp.buf.formatting_sync(nil, 100)
autocmd BufWritePre *.tsx lua vim.lsp.buf.formatting_sync(nil, 100)


if has('termguicolors')
  set termguicolors
endif
colorscheme gruvbox-material 

hi CursorLine term=bold cterm=bold guibg=#333333

hi Directory guifg=#a8d2eb guibg=NONE
hi BufferTabpageFill guibg=none

hi BufferCurrent guifg=#E49C55 guibg=none
hi BufferInactive guibg=none 
hi BufferInactiveSign guibg=none
hi BufferCurrentSign guibg=none

let NERDTreeMinimalUI=1

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
nnoremap <C-P> <cmd>Telescope git_files<CR>
nnoremap <C-F> <cmd>:Ag<CR>

nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprev<CR>

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>

nnoremap <C-u> 10k
nnoremap <C-d> 10j

nnoremap <C-S> :update<cr>
nnoremap <leader>+ :vertical resize +5<CR>
nnoremap <leader>- :vertical resize -5<CR>

" " Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy

" " Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P
