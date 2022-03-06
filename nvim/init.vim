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
source ~/.config/nvim/plugins/devicons.vim
source ~/.config/nvim/plugins/webdevicons.vim
source ~/.config/nvim/plugins/barbar.vim
source ~/.config/nvim/plugins/fzf.vim

source ~/.config/nvim/plugins/vimjsxpretty.vim
source ~/.config/nvim/plugins/vimjsxtypescript.vim
source ~/.config/nvim/plugins/coc.vim
source ~/.config/nvim/plugins/vimairline.vim
source ~/.config/nvim/plugins/delimiteMite.vim
source ~/.config/nvim/plugins/commentary.vim
source ~/.config/nvim/plugins/tailwind.vim
source ~/.config/nvim/plugins/brackerpaircolorizer.vim
source ~/.config/nvim/plugins/vimcommentary.vim
source ~/.config/nvim/plugins/styledcomponents.vim
" source ~/.config/nvim/plugins/floaterm.vim

source ~/.config/nvim/plugins/gruvbox.vim
source ~/.config/nvim/plugins/vscode.vim
call plug#end()

autocmd BufEnter *.{js,jsx,ts,tsx} :syntax sync fromstart
autocmd BufLeave *.{js,jsx,ts,tsx} :syntax sync clear


if has('termguicolors')
  set termguicolors
endif

colorscheme gruvbox 

let bufferline = get(g:, 'bufferline', {})
let bufferline.icons = v:false

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

nmap <leader>gh :diffget //3<CR>
nmap <leader>gu :diffget //2<CR>
nmap <leader>gs :G<CR>


