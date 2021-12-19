"---------------------------------------------------------------
" General Settings
"---------------------------------------------------------------

set termguicolors
set scrolloff=4
set hidden
set clipboard=unnamedplus
set noerrorbells
set incsearch
set scrolloff=6
set sidescrolloff=6
set tabstop=2
set shiftwidth=2
set number
set relativenumber
set expandtab
set autowrite
set autoindent
set mouse+=a


"---------------------------------------------------------------
" Plugins 
"---------------------------------------------------------------

set rtp +=~/.config/nvim
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif
let g:plug_home = stdpath("data") . "/plugged"

call plug#begin(plug_home)
source ~/.config/nvim/plugins/jsonc.vim
source ~/.config/nvim/plugins/nightfox.vim
source ~/.config/nvim/plugins/base16.vim
source ~/.config/nvim/plugins/colorschemes.vim
source ~/.config/nvim/plugins/telescope.vim
source ~/.config/nvim/plugins/nerdtree.vim
source ~/.config/nvim/plugins/transparent.vim
source ~/.config/nvim/plugins/prettier.vim
source ~/.config/nvim/plugins/treesitter.vim
source ~/.config/nvim/plugins/auto-pairs.vim
source ~/.config/nvim/plugins/devicons.vim
source ~/.config/nvim/plugins/web-devicons.vim
source ~/.config/nvim/plugins/barbar.vim
source ~/.config/nvim/plugins/javascript.vim
source ~/.config/nvim/plugins/coc.vim
source ~/.config/nvim/plugins/typescript.vim
source ~/.config/nvim/plugins/jsx-pretty.vim
source ~/.config/nvim/plugins/plenary.vim
source ~/.config/nvim/plugins/editorconfig.vim
source ~/.config/nvim/plugins/fzf.vim
source ~/.config/nvim/plugins/floaterm.vim
call plug#end()

" Atelier_DuneDark
" Atelier_EstuaryDark
" Atelier_PlateauDark
" Atelier_SavannaDark
color nightfox 

autocmd FileType scss setl iskeyword+=@-@

let g:javascript_plugin_jsdoc = 1

" NerdTree minimal ui, better
let NERDTreeMinimalUI=1

command! -nargs=0 Prettier :CocCommand prettier.formatFile


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
