-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(function(bufnr)
          require("astronvim.utils.buffer").close(
            bufnr)
        end)
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    ["<C-t>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
    ["<C-j>"] = { "5j", desc = "down 5 lines" },
    ["<C-k>"] = { "5k", desc = "up 5 lines" },
    ["<C-q>"] = { "<cmd>bd<cr>", desc = "Close buffer" },
    ["<C-l>"] = { function() require("astronvim.utils.buffer").nav(vim.v.count > 0 and vim.v.count or 1) end, desc =
    "Next buffer" },
    ["<C-h>"] = { function() require("astronvim.utils.buffer").nav(-(vim.v.count > 0 and vim.v.count or 1)) end, desc =
    "Previous buffer", },
    -- To make surround.nvim work with leap:
    ["ds"] = { "<Plug>Dsurround", desc = "vim-surround" },
    ["cs"] = { "<Plug>Csurround", desc = "vim-surround" },
    ["cS"] = { "<Plug>CSurround", desc = "vim-surround" },
    ["ys"] = { "<Plug>Ysurround", desc = "vim-surround" },
    ["yS"] = { "<Plug>YSurround", desc = "vim-surround" },
    ["yss"] = { "<Plug>Yssurround", desc = "vim-surround" },
    ["ySs"] = { "<Plug>YSsurround", desc = "vim-surround" },
    ["ySS"] = { "<Plug>YSsurround", desc = "vim-surround" },
  },
  t = {
    ["<C-n>"] = { "<C-\\><C-n>", desc = "Terminal normal mode" },
    ["<C-t>"] = { "<cmd>ToggleTerm<cr>", desc = "Toggle terminal" },
  },
  x = {
    ["<C-j>"] = { "5j", desc = "down 5 lines" },
    ["<C-k>"] = { "5k", desc = "up 5 lines" },
    -- The conflicting ones. Note that `<Plug>(leap-cross-window)`
    -- _does_ work in Visual mode, if jumping to the same buffer,
    -- so in theory, `gs` could be useful for Leap too...
    ["gs"] = { "<Plug>VSurround", desc = "vim-surround" },
    ["gS"] = { "<Plug>VgSurround", desc = "vim-surround" },
  }
}
