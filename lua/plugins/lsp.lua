require("mason").setup({
  ui = {
      icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗"
      }
  }
})

require("mason-lspconfig").setup({
  -- 确保安装，根据需要填写
  ensure_installed = {
    "lua_ls",
    "clangd",
    "cmake",
    "clang-format",
  },
})


local lsp = require("lspconfig")
local lsp_ls = {"lua_ls","cmake","clangd","pyright"}

local capabilities = require('cmp_nvim_lsp').default_capabilities()

for _,v in ipairs(lsp_ls) do
  lsp[v].setup({
    capabilities = capabilities,
  })
end
