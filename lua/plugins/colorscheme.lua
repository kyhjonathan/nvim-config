-- ~/.config/nvim/lua/plugins/colorscheme.lua
return {
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      -- vim.cmd([[colorscheme tokyonight]])
    end,
  },
  {
    "catppuccin/nvim",
    name = "catppuccin",
    lazy = false,
    priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavour = "mocha", -- latte, frappe, macchiato, mocha
        transparent_background = false,
      })
      vim.cmd([[colorscheme catppuccin]])
    end,
  },
}
