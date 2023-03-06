call plug#begin()
    Plug 'github/copilot.vim'
    Plug 'preservim/nerdtree'
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'akinsho/toggleterm.nvim', {'tag' : '2.2.1'}
    Plug 'ellisonleao/gruvbox.nvim'
    " Plug 'jiangmiao/auto-pairs'
    Plug 'tpope/vim-surround'
    Plug 'tpope/vim-repeat'
    Plug 'tpope/vim-unimpaired'
    Plug 'ggandor/leap.nvim'
    Plug 'numToStr/Comment.nvim'
    Plug 'kyazdani42/nvim-web-devicons'
    Plug 'nvim-lualine/lualine.nvim'
    " Plug 'kdheepak/tabline.nvim'
    Plug 'lervag/vimtex'

    Plug 'nvim-lua/plenary.nvim'
    Plug 'sindrets/diffview.nvim'
    Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
    Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.0' }
    Plug 'nvim-telescope/telescope-fzf-native.nvim', { 'do': 'make' }
    Plug 'fannheyward/telescope-coc.nvim'
call plug#end()

let NERDTreeShowHidden=1

set background=dark

filetype plugin on
syntax on

set number 
" set cursorline
set relativenumber
set nocompatible
set tabstop=4
set shiftwidth=4
set expandtab
set autoindent
set termguicolors
set t_Co=256
set hidden
set splitright
set splitbelow
set nowrap
set ignorecase
set smartcase
set scrolloff=8

autocmd FileType ocaml setlocal shiftwidth=2 tabstop=2
" autocmd FileType yaml set foldmethod=indent

let g:vimtex_view_method = 'zathura'

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

local custom_theme = require'lualine.themes.codedark'
custom_theme.normal.c.bg = nil
custom_theme.replace.c.bg = nil
custom_theme.insert.c.bg = nil
require('lualine').setup {
    options = {
        theme = custom_theme,
    },
    tabline = {
      lualine_a = {'buffers'},
      lualine_b = {},
      lualine_c = {},
      lualine_x = {},
      lualine_y = {},
      lualine_z = {'tabs'}
    }
}

-- require('tabline').setup()
require('leap').add_default_mappings()
require('leap').setup {
    highlight_unlabeled = true
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
        hidden = true,
        file_ignore_patterns = { "node_modules", ".git/" }
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
require('Comment').setup()

require('gruvbox').setup({
    bold = true,
    italic = true,
    underline = true,
    transparent_mode = true,
    overrides = {
    }
})
vim.cmd('colorscheme gruvbox')
EOF
