local builtin = require("telescope.builtin")

-- Toggle Neotree with Ctrl + n
vim.keymap.set("n", "<C-n>", ":Neotree toggle<CR>", { desc = "Toggle Neo-tree" })

-- Fuzzy Find with Ctrl + p
vim.keymap.set("n", "<C-p>", builtin.find_files, { desc = "Telescope find files" })

-- Live Grep with leader + gf
vim.keymap.set("n", "<leader>gf", builtin.live_grep, { desc = "Live Grep" })

-- Jump to the window on the right with Ctrl + l
vim.keymap.set("n", "<C-l>", "<C-w>l", { noremap = true, silent = true })

-- Jump to the window on the left with Ctrl + h
vim.keymap.set("n", "<C-h>", "<C-w>h", { noremap = true, silent = true })

-- Jump to the window above with Ctrl + k
vim.keymap.set("n", "<C-k>", "<C-w>k", { noremap = true, silent = true })

-- Jump to the window below with Ctrl + j
vim.keymap.set("n", "<C-j>", "<C-w>j", { noremap = true, silent = true })

-- LSP hover documentation with Shift + k
vim.keymap.set("n", "K", vim.lsp.buf.hover, { desc = "LSP Hover Documentation" })

-- Go to definition with leader + gd (using Telescope for cleaner interface)
vim.keymap.set("n", "<leader>gd", builtin.lsp_definitions, { desc = "Go to Definition" })

-- Go to references with leader + gr
vim.keymap.set("n", "<leader>gr", builtin.lsp_references, { desc = "Go to References" })

-- Go to implementation with leader + gi  
vim.keymap.set("n", "<leader>gi", builtin.lsp_implementations, { desc = "Go to Implementation" })

-- Show diagnostics for the current line with gl
vim.keymap.set("n", "gl", vim.diagnostic.open_float, { desc = "Show Line Diagnostics" })

-- Code actions with leader + ca
vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, { desc = "Code Actions" })

-- Git preview hunk with leader + gp
vim.keymap.set("n", "<leader>gp", ":Gitsigns preview_hunk<CR>", {})
