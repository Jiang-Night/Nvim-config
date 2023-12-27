# Nvim配置
> OS ：`Kali Linux (on the Windows Subsystem for Linux)`
> 
> Kernel: `x86_64 Linux 5.15.133.1-microsoft-standard-WSL2`
---

### lua
>存放所有配置脚本
---

### options
>nvim的基础设置以及快捷键配置`options.lua`中有详细注释说明 可自行更改
---

### plugins
> 插件配置
> `autopairs.lua`:自动补全括号配置
> 
> `bufferline.lua`:buffer插件配置
> 
> `cmp.lua`:自动补全插件配置 参考[这里](https://github.com/LunarVim/Neovim-from-scratch/blob/master/lua/user/cmp.lua)
>
> `git.lua`:git插件支持
>
> `lazy-config.lua`: 插件的配置管理
>
> `lualine.lua`:lualine插件配置 提供状态栏
>
> `nvim-tree.lua`:nvim-tree插件 提供左侧文件树 （打开快捷键 leader + t）
>
>`toggleterm.lua`:nvim中的小终端 使用float样式
>
> `treesitter.lua`:语法高亮配置 **[使用nvim打开此文件会出现报错 不清楚是不是配置有问题](https://github.com/Jiang-Night/Nvim-config/blob/main/res/treesitter.png)**
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
---
> 使用方法
```shell
#安装nvim ：https://github.com/neovim/neovim/blob/master/INSTALL.md （因为部分插件原因 必须保证neovim在v0.8+）
#安装完成后 打开终端
cd ~/.config
git clone https://github.com/Jiang-Night/Nvim-config.git

```


### 已知问题
 `直接使用pyright命令 提示一下报错 可能某些插件冲突 暂时不知道如何解决`
![image](https://github.com/Jiang-Night/Nvim-config/blob/eeae6d1b3fafff96e30f3a21675a9c88a6fac94d/res/pyright.png)

`python文件如果有报错并不会提示（以下问题猜测是pyright安装有误`
![image](https://github.com/Jiang-Night/Nvim-config/blob/eeae6d1b3fafff96e30f3a21675a9c88a6fac94d/res/python_not_error.png)

`python文件没有代码提示 代码提示错误`

![image](https://github.com/Jiang-Night/Nvim-config/blob/eeae6d1b3fafff96e30f3a21675a9c88a6fac94d/res/python_not_cmp.png)


