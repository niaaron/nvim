-- mapleader is the button to be pressed before keymap
vim.g.mapleader = " "
--vim.keymap.set("n", "<leader>ft", vim.cmd.Ex)
vim.keymap.set("n", "<leader>ft", "<Cmd>Neotree toggle<CR>")

-- shows popup of errors
local bufopts = { noremap = true, silent = true, buffer = bufnr }
vim.keymap.set("n", "<space>e", vim.diagnostic.open_float, bufopts)

