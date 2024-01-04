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
  },
})


local lspconfig = require("lspconfig")
local servers = {"lua_ls","cmake","clangd","pyright"}


local capabilities = require('cmp_nvim_lsp').default_capabilities()

for _,lsp in ipairs(servers) do
  lspconfig[lsp].setup({
    capabilities = capabilities,
  })
end
