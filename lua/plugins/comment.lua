-- ~/.config/nvim/lua/plugins/comment.lua
return {
  "numToStr/Comment.nvim",
  lazy = false,
  config = function()
    require("Comment").setup({
      toggler = {
        ---Line-comment toggle keymap
        line = 'gcc',
        ---Block-comment toggle keymap
        block = 'gbc',
      },
      opleader = {
        ---Line-comment keymap
        line = 'gc',
        ---Block-comment keymap
        block = 'gb',
      },
    })
  end,
}
