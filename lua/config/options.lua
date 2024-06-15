vim.g.completopt = "menu, noselect, menuone,"
vim.opt.mouse = "a"
vim.o.formatexpr = "v:lua.require'conform'.formatexpr()"
vim.opt.foldenable = false
vim.opt.swapfile = false
vim.opt.autoindent = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.list = false
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.copyindent = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autowriteall = true
vim.opt.list = false
vim.opt.updatetime = 100
vim.opt.foldlevel = 1
vim.opt.foldmethod = "syntax"
vim.opt.foldexpr = "nvim_treesitter#foldexpr()"
vim.g.mapleader = " "
vim.keymap.set("n", "<Tab>", "<C-w><C-w>", {})
vim.keymap.set("v", "cc", '"+y', {})
