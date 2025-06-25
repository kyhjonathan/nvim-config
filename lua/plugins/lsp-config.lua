return {
  {
    "williamboman/mason.nvim",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
          "ts_ls",
          "tailwindcss",
          "pyright",
          "eslint",
          "html",
        },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- Configure LSP servers using vim.lsp.config
      vim.lsp.config.lua_ls = {
        cmd = { "lua-language-server" },
        filetypes = { "lua" },
        root_markers = { ".luarc.json", ".luarc.jsonc", ".luacheckrc", ".stylua.toml", "stylua.toml", "selene.toml", "selene.yml" },
      }
      
      vim.lsp.config.ts_ls = {
        cmd = { "typescript-language-server", "--stdio" },
        filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx" },
        root_markers = { "tsconfig.json", "package.json", "jsconfig.json", ".git" },
      }
      
      vim.lsp.config.pyright = {
        cmd = { "pyright-langserver", "--stdio" },
        filetypes = { "python" },
        root_markers = { "pyproject.toml", "setup.py", "setup.cfg", "requirements.txt", "Pipfile", "pyrightconfig.json", ".git" },
      }
      
      vim.lsp.config.eslint = {
        cmd = { "vscode-eslint-language-server", "--stdio" },
        filetypes = { "javascript", "javascriptreact", "javascript.jsx", "typescript", "typescriptreact", "typescript.tsx", "vue", "svelte", "astro" },
        root_markers = { ".eslintrc", ".eslintrc.js", ".eslintrc.cjs", ".eslintrc.yaml", ".eslintrc.yml", ".eslintrc.json", "eslint.config.js", "package.json" },
        on_attach = function(client, bufnr)
          vim.api.nvim_create_autocmd("BufWritePre", {
            buffer = bufnr,
            command = "EslintFixAll",
          })
        end,
      }
      
      vim.lsp.config.html = {
        cmd = { "vscode-html-language-server", "--stdio" },
        filetypes = { "html" },
        root_markers = { ".git" },
      }
      
      vim.lsp.config.tailwindcss = {
        cmd = { "tailwindcss-language-server", "--stdio" },
        filetypes = { "html", "javascript", "javascriptreact", "typescript", "typescriptreact", "svelte", "vue" },
        root_markers = { "tailwind.config.js", "tailwind.config.cjs", "tailwind.config.mjs", "tailwind.config.ts", "postcss.config.js", "postcss.config.cjs", "postcss.config.mjs", "postcss.config.ts", ".git" },
      }
      
      -- Enable the LSP servers
      vim.lsp.enable({ "lua_ls", "ts_ls", "pyright", "eslint", "html", "tailwindcss" })
    end,
  },
}
