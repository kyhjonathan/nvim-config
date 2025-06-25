-- Use Lua native API for editor settings:
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.termguicolors = true


--  Add smart case-insensitive search:
vim.opt.ignorecase = true -- ignore case when searching...
vim.opt.smartcase = true  -- ... unless uppercase is used

-- Load plugins and keymaps
require("config.lazy")
require("config.keymaps")
require("config.diagnostics")
