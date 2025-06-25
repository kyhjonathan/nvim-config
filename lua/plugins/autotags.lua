return {
  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
    config = function()
      require("nvim-ts-autotag").setup({
        filetypes = {
          "html",
          "xml",
          "javascript",
          "typescript",
          "tsx",
          "javascriptreact",
          "typescriptreact",
        },
      })
    end,
  },
}
