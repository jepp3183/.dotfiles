return {
  {
    "tpope/vim-surround",
    lazy = false
  },
  {
    "ggandor/leap.nvim",
    init = function()
      require("leap").add_default_mappings()
      require("leap").setup({
        highlight_unlabeled = true
      })
    end
  },
  {
    "kaarmu/typst.vim",
    lazy = false,
    ft = 'typ'
  },
}
