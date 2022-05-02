" Key bindings
inoremap jk <Esc>
nnoremap <C-n> :NvimTreeToggle<CR>

" General configuration
set number
set relativenumber
set cursorline
set nobackup

" Install vim-plug if not found
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
endif

" Run PlugInstall if there are missing plugins
autocmd VimEnter * if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \| PlugInstall --sync | source $MYVIMRC
\| endif

call plug#begin()

Plug 'kyazdani42/nvim-web-devicons' " for file icons
Plug 'kyazdani42/nvim-tree.lua'
Plug 'projekt0n/github-nvim-theme'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" Tree
lua require'nvim-tree'.setup()
set termguicolors
let g:nvim_tree_highlight_opened_files = 1
let g:nvim_tree_add_trailing = 1

" Theming
colorscheme github_dark

" CoC
exe 'source' '~/.config/nvim/coc.vim'

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'minimalist'
set noshowmode
set cmdheight=1
