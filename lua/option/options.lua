local set = vim.opt

-- 行号
-- set.relativenumber = true
set.number = true


-- 缩进
set.tabstop = 2
set.shiftwidth = 2
set.expandtab = true
set.autoindent = true

-- 防止包裹
set.wrap = false

-- 光标行
-- set.cursorline = true


-- 启用鼠标
set.mouse:append("a")

-- 系统剪切板
set.clipboard:append("unnamedplus")

-- 在copy后高亮
vim.api.nvim_create_autocmd({"TextYankPost"},{
    pattern = {"*"},
    callback = function()
      vim.highlight.on_yank({
        timeout = 300,
      })
    end,
})


-- 默认新窗口在右和下
set.splitright = true
set.splitbelow = true


-- 搜索
set.ignorecase = true
set.smartcase = true

-- 外观
set.termguicolors = true
set.signcolumn = "yes"
vim.cmd[[colorscheme tokyonight-moon]]

-- 按键配置
vim.g.mapleader = " "
local keymap = vim.keymap


-- ----------插入模式-------------
keymap.set("i","jk","<ESC>")


-- ----------视觉模式--------------
-- 单行或多行移动
keymap.set("v","J",":m '>+1<CR>gv=gv")
keymap.set("v","K",":m '>-2<CR>gv=gv")
-- -----------正常模式--------------
-- 窗口
keymap.set("n","<leader>v","<C-w>v") -- 水平新增窗口
keymap.set("n","<leader>h","<C-w>s") --垂直新增窗口
keymap.set("n","<C-l>","<C-w>l") --切换窗口（左）
keymap.set("n","<C-h>","<C-w>h") --切换窗口（右）
keymap.set("n","<C-j>","<C-w>j") --切换窗口（上）
keymap.set("n","<C-k>","<C-w>k") --切换窗口（下）
keymap.set("n","<leader>[","<C-o>") -- 返回上一个窗口
keymap.set("n","<leader>]","<C-i>") -- 返回下一个窗口

-- 取消高亮
keymap.set("n","<leader>nh",":nohl<CR>")

-- -------------插件-----------------
-- nvim-tree
keymap.set("n","<leader>t",":NvimTreeToggle<CR>") -- 打开tree文件列表
-- telescope
local builtin = require("telescope.builtin")
-- 进入telescope页面会是插入模式，回到正常模式就可以用j和k来移动了
keymap.set("n","<leader>ff",builtin.find_files,{})
keymap.set("n","<leader>fg",builtin.live_grep,{})
keymap.set("n","<leader>fb",builtin.buffers,{})
keymap.set("n","<leader>fh",builtin.help_tags,{})
-- 切换buffer
keymap.set("n", "<leader>l", ":bnext<CR>")
keymap.set("n", "<leader>h", ":bprevious<CR>")
