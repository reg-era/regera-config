-- ~/.config/nvim/lua/config/lsp.lua

local lspconfig = require("lspconfig")
local cmp_nvim_lsp = require("cmp_nvim_lsp")

-- Enhance LSP capabilities to support nvim-cmp autocompletion
local capabilities = cmp_nvim_lsp.default_capabilities()

-- Setup language servers with capabilities
lspconfig.pyright.setup({
  capabilities = capabilities,
})

lspconfig.gopls.setup({
  capabilities = capabilities,
})

lspconfig.rust_analyzer.setup({
  capabilities = capabilities,
})

lspconfig.clangd.setup({
  capabilities = capabilities,
})

-- You can add more servers below if needed

