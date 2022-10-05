call plug#begin()
    Plug 'github/copilot.vim'
    Plug 'preservim/nerdtree'
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'akinsho/toggleterm.nvim', {'tag' : '2.2.1'}
    Plug 'morhetz/gruvbox'
    Plug 'jiangmiao/auto-pairs'
    Plug 'ryanoasis/vim-devicons'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-repeat'
    Plug 'ggandor/lightspeed.nvim'

    Plug 'nvim-lua/plenary.nvim'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
    Plug 'fannheyward/telescope-coc.nvim'
call plug#end()

let NERDTreeShowHidden=1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='base16_gruvbox_dark_hard'

colorscheme gruvbox

filetype plugin on
syntax on

set number 
set cursorline
set relativenumber
set nocompatible
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set t_Co=256
set hidden
set splitright
set splitbelow
set nowrap

let mapleader=" "

lua << EOF
require('toggleterm').setup{
  open_mapping = [[<c-t>]],
  size =  function(term)
    if term.direction == "horizontal" then
      return 20
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.4
    end
  end,
  direction = 'float'
}

local telescope = require('telescope')

require('telescope').setup{
  defaults = {
    mappings = {
      i = {
          ["<Esc>"] = require('telescope.actions').close,
          ["<C-j>"] = require('telescope.actions').move_selection_next,
          ["<C-k>"] = require('telescope.actions').move_selection_previous,
          },
    }
  },
  pickers = {
    find_files = {
        hidden = true
    }
  },
  extensions = {
    fzf = {
      fuzzy = true,                    -- false will only do exact matching
      override_generic_sorter = true,  -- override the generic sorter
      override_file_sorter = true,     -- override the file sorter
      case_mode = "smart_case",        -- or "ignore_case" or "respect_case"
                                       -- the default case_mode is "smart_case"
    }
  }
}

require('telescope').load_extension('fzf')
require('telescope').load_extension('coc')

require('nvim-treesitter.configs').setup {
  ensure_installed = "all",
  highlight = { enable = true },
  indent = { enable = true }
}

EOF
