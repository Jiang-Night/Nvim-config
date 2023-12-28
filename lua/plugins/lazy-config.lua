local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- 插件
local plugins = {
  "folke/tokyonight.nvim", -- 主题
  "nvim-lualine/lualine.nvim", -- 状态栏
  "nvim-tree/nvim-tree.lua", -- 文档树
  "nvim-tree/nvim-web-devicons", -- 文档树图标  
   "nvim-treesitter/nvim-treesitter", -- 语法高亮
  "p00f/nvim-ts-rainbow", -- 配合treesitter，不同括号颜色区分


  -- 文件检索
  {
    'nvim-telescope/telescope.nvim', tag = '0.1.5',
      dependencies = { 'nvim-lua/plenary.nvim' }
  },

  -- LSP/Mason
  {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim", -- 这个相当于mason.nvim和lspconfig的桥梁
    "neovim/nvim-lspconfig",
  },

  {
    "jose-elias-alvarez/null-ls.nvim", --代码格式化
     event = "VeryLazy",
    opts = function ()
      return require("plugins.null-ls")
    end
  },

  -- 自动补全
  {
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "L3MON4D3/LuaSnip", -- snippets引擎，不装这个自动补全会出问题
    "saadparwaiz1/cmp_luasnip",
    "rafamadriz/friendly-snippets",
    "hrsh7th/cmp-path", -- 文件路径
  },

  -- 注释
  {
  "numToStr/Comment.nvim", -- gcc和gc注释
  "windwp/nvim-autopairs", -- 自动补全括号
  },
  
  -- buffer
  {
    {"akinsho/bufferline.nvim",require = 'nvim-tree/nvim-web-devicons'}, -- buffer分割线
   "lewis6991/gitsigns.nvim", -- 左则git提示
  },

  {
    {'akinsho/toggleterm.nvim', version = "*", config = true},
  },

}


local opts = {}

require("lazy").setup(plugins,opts)
