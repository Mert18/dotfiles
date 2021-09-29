set scrolloff=3
set tabstop=2
set shiftwidth=2
set number
set relativenumber
set expandtab
set autowrite
set autoindent
set mouse+=a

set rtp +=~/.config/nvim
let data_dir = has('nvim') ? stdpath('data') . '/site' : '~/.vim'
if empty(glob(data_dir . '/autoload/plug.vim'))
  silent execute '!curl -fLo '.data_dir.'/autoload/plug.vim --create-dirs  https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

highlight link htmlTag htmlTagName
highlight link htmlEndTag htmlTagName

let g:plug_home = stdpath("data") . "/plugged"

call plug#begin(plug_home)
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'moll/vim-node'
Plug 'preservim/nerdtree'
Plug 'prettier/vim-prettier', { 'do': 'yarn install' }
Plug 'neoclide/coc.nvim', {'branch': 'release'}
let g:coc_global_extensions = ['coc-emmet', 'coc-css', 'coc-html', 'coc-json', 'coc-prettier', 'coc-tsserver', 'coc-pairs', 'coc-snippets']
Plug 'leafgarland/typescript-vim'
Plug 'pangloss/vim-javascript'
Plug 'peitalin/vim-jsx-typescript'
Plug 'tpope/vim-commentary'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'alvan/vim-closetag'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-surround'
Plug 'jiangmiao/auto-pairs'
Plug 'ryanoasis/vim-devicons'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'sbdchd/neoformat'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'sheerun/vim-polyglot'
Plug 'sainnhe/everforest'
Plug 'tribela/vim-transparent'
Plug 'morhetz/gruvbox'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
Plug 'romgrk/barbar.nvim'
call plug#end()

let g:tokyonight_style = 'night' " available: night, storm
let g:tokyonight_enable_italic = 1

set encoding=UTF-8
set guifont=DroidSansMono\ Nerd\ Font\ 11
if(has("termguicolors"))
  set termguicolors
endif
syntax enable
colorscheme gruvbox
set background=dark

" filenames like *.xml, *.html, *.xhtml, ...
" These are the file extensions where this plugin is enabled.
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml'

" filenames like *.xml, *.xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'

" filetypes like xml, html, xhtml, ...
" These are the file types where this plugin is enabled.
"
let g:closetag_filetypes = 'html,xhtml,phtml'

" filetypes like xml, xhtml, ...
" This will make the list of non-closing tags self-closing in the specified files.
"
let g:closetag_xhtml_filetypes = 'xhtml,jsx'

" integer value [0|1]
" This will make the list of non-closing tags case-sensitive (e.g. `<Link>` will be closed while `<link>` won't.)
"
let g:closetag_emptyTags_caseSensitive = 1

" dict
" Disables auto-close if not in a "valid" region (based on filetype)
"
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ 'typescriptreact': 'jsxRegion,tsxRegion',
    \ 'javascriptreact': 'jsxRegion',
    \ }

" Shortcut for closing tags, default is '>'
"
let g:closetag_shortcut = '>'

" Add > at current position without closing the current tag, default is ''
"
let g:closetag_close_shortcut = '<leader>>'

command! -nargs=0 Prettier :CocCommand prettier.formatFile:


let g:NERDTreeShowHidden = 1
let g:NERDTreeMinimalUI = 1
let g:NERDTreeIgnore = []
let g:NERDTreeStatusline = ''

" Our remaps
let mapleader = " "
nnoremap <leader>pv :Vex<CR>
nnoremap <C-p> :GFiles<CR>
nnoremap <C-f> :Files<CR>
nnoremap <leader>pf :Files<CR>
nnoremap <C-j> :cnext<CR>
nnoremap <C-k> :cprev<CR>
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-u> 10k
nnoremap <C-d> 10j
nnoremap <silent> <leader>c} V}:call NERDComment('x', 'toggle')<CR>
nnoremap <silent> <leader>c{ V{:call NERDComment('x', 'toggle')<CR>

nnoremap <silent> <leader>, :BufferPrevious<CR>
nnoremap <silent> <leader>. :BufferNext<CR>
nnoremap <silent>    <A-p> :BufferPin<CR>
nnoremap <silent> <leader>/ :BufferClose<CR>
