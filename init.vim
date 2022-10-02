call plug#begin()
    Plug 'github/copilot.vim'
    Plug 'preservim/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
call plug#end()

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_powerline_fonts = 1

set number 
set relativenumber
set nocompatible
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set t_Co=256
 
let mapleader=" "
imap jj <Esc>
imap kk <C-N>
map <Enter> o<ESC>k
nnoremap <leader>t :NERDTreeToggle<CR>
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>
