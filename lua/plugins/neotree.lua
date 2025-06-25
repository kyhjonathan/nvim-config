return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x",
    dependencies = {
      "nvim-lua/plenary.nvim",
      "nvim-tree/nvim-web-devicons", -- optional but recommended
      "MunifTanjim/nui.nvim",
      -- { "3rd/image.nvim", opts = {} }, -- optional for image preview
    },
    lazy = false, -- disables lazy-loading: loads immediately
    opts = {
      window = {
        position = "left",
        width = 30,
      },
      filesystem = {
        follow_current_file = {
          enabled = true,          -- this enables auto-reveal
          leave_dirs_open = false, -- optional, closes unneeded folders
        },
      },
    },
  },
}
