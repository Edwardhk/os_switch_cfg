local keymap = vim.api.nvim_set_keymap
local default_opts = { noremap = true, silent = true }
local expr_opts = { noremap = true, expr = true, silent = true }


-- Global vim leader key -- 
vim.g.mapleader = " "

-- NERDTree related --
keymap("n", "<Leader>t", ":NERDTreeToggle<CR>", default_opts)
