vim.diagnostic.config({
  virtual_text = {
    prefix = "●", -- Can change to "■", "◆", "▎", or ""
  },
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = " ",
      [vim.diagnostic.severity.WARN] = " ",
      [vim.diagnostic.severity.HINT] = " ",
      [vim.diagnostic.severity.INFO] = " ",
    },
  },
  underline = true,
  update_in_insert = false,
  severity_sort = true,
})

-- Optional: show popup on hover after delay
vim.o.updatetime = 250
vim.cmd([[autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focus = false })]])

-- Optional: Use icons in the gutter for errors
local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- Optional: show popup on hover after delay
vim.o.updatetime = 250
vim.cmd([[autocmd CursorHold * lua vim.diagnostic.open_float(nil, { focus = false })]])
