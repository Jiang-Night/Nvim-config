# Nvim配置
> 使用操作的系统 ：`** Kali Linux (on the Windows Subsystem for Linux)**`
---
## 使用的插件
  - Lazy包管理器
  - nvim-tree
  - folke/tokyonight.nvim 主题
  - nvim-lualine/lualine.nvim 状态栏
  - nvim-tree/nvim-tree.lua 文档树
  - nvim-tree/nvim-web-devicons 文档树图标  
  - nvim-treesitter/nvim-treesitter 语法高亮
  - p00f/nvim-ts-rainbow 配合treesitte，不同括号颜色区分
  - nvim-telescope/telescope.nvim
  - nvim-lua/plenary.nvim
> LSP/Mason
  - williamboman/mason.nvim,
  - williamboman/mason-lspconfig.nvim 这个相当于mason.nvim和lspconfig的桥梁
  - neovim/nvim-lspconfig,
> 自动补全
   - hrsh7th/nvim-cmp
   - hrsh7th/cmp-nvim-lsp
   - L3MON4D3/LuaSnip snippets引擎，不装这个自动补全会出问题
   - saadparwaiz1/cmp_luasnip
   - rafamadriz/friendly-snippets
   - hrsh7th/cmp-path 文件路径
> 注释
  - numToStr/Comment.nvim gcc和gc注释
  - windwp/nvim-autopairs 自动补全括号
> buffer
   - akinsho/bufferline.nvim buffer分割线
   - lewis6991/gitsigns.nvim 左则git提示
   -  akinsho/toggleterm.nvim

### 已知问题
 `直接使用pyright命令 提示一下报错 可能某些插件冲突 暂时不知道如何解决`
![image](https://github.com/Jiang-Night/Nvim-config/blob/eeae6d1b3fafff96e30f3a21675a9c88a6fac94d/res/pyright.png)

`python文件如果有报错并不会提示（以下问题猜测是pyright安装有误`
![image](https://github.com/Jiang-Night/Nvim-config/blob/eeae6d1b3fafff96e30f3a21675a9c88a6fac94d/res/python_not_error.png)

`python文件没有代码提示 代码提示错误`

![image](https://github.com/Jiang-Night/Nvim-config/blob/eeae6d1b3fafff96e30f3a21675a9c88a6fac94d/res/python_not_cmp.png)


