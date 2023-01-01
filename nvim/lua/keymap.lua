local keymap = vim.api.nvim_set_keymap
local opts = {silent = true, noremap = true}
local expr_opts = {silent = true, noremap = true, expr = true }

-- Global vim key remap -- 
vim.g.mapleader = " "

-- NERDTree related --
keymap("n", "<Leader>t", ":NERDTreeToggle<CR>", opts)

-- Telescope related --
keymap("n", "<Leader>ff", ":Telescope find_files<CR>", opts)
keymap("n", "<Leader>fg", ":Telescope live_grep<CR>", opts)

-- COC related --
function _G.check_back_space()
    local col = vim.fn.col('.') - 1
    return col == 0 or vim.fn.getline('.'):sub(col, col):match('%s') ~= nil
end
keymap("i", '<TAB>', 'coc#pum#visible() ? coc#pum#next(1) : v:lua.check_back_space() ? "<TAB>" : coc#refresh()', expr_opts)
keymap("n", "gd", "<Plug>(coc-definition)", opts)
