-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- 缩进设置为 4 空格
vim.opt.shiftwidth = 4 -- 自动缩进/手动缩进（>>、<<）的宽度
vim.opt.tabstop = 4 -- Tab 字符显示为 4 空格
vim.opt.softtabstop = 4 -- 按 Tab/Backspace 时操作 4 空格
vim.opt.expandtab = true -- Tab 键输入空格而非制表符
vim.opt.smartindent = true -- 智能缩进（如 C/C++ 等语言）
