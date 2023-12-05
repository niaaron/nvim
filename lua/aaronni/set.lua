-- line numbers
vim.opt.nu = true

-- tab sizes
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- copy indent from previous line when making new line
vim.opt.smartindent = true

-- text wrapping
vim.opt.wrap = false

-- stores undo history in a file in dir below
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

-- keep searched pattern highlighted
vim.opt.hlsearch = false

-- shows where pattern is as it was typed so far
vim.opt.incsearch = true

-- enables 24-bit rgb color
vim.opt.termguicolors = true

-- number of ms after no input will swapfile be updated
vim.opt.updatetime = 50

-- the right margin column
vim.opt.colorcolumn = "80"

-- show whitespace
vim.opt.list = true
vim.opt.listchars = { tab = ">.", trail = "." }

-- keep 5 lines visible at the top and bottom of the screen when scrolling
vim.opt.scrolloff = 5

-- makes yank copy to system clipboard
vim.o.clipboard = "unnamedplus"

