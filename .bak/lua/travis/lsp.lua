local lsp_zero = require('lsp-zero')

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})
end)

-- see :help lsp-zero-guide:integrate-with-mason-nvim
-- to learn how to use mason.nvim with lsp-zero
require('mason').setup({})
require('mason-lspconfig').setup({
  handlers = {
    lsp_zero.default_setup,
  }
})

require("lspconfig").pylsp.setup({
    settings = {
        pylsp = {
            plugins = {
                flake8 = {enabled = false},
                pyflakes = {enabled = false},
                autopep8 = {enabled = false},
                pycodestyle = {enabled = false},
                pyright = {enabled = false},
                pylint = {enabled = true},
                mypy = {dmypy = true, live_mode = false},
                black = {enabled = true},
            }
        }
    }
})
