-- core.lua - hold the basic nvim key bindings and configuration here

vim.opt.mouse = 'a'
vim.g.mapleader = " "
vim.opt.termguicolors = true
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.autoindent = true
vim.opt.tabstop=4
vim.opt.shiftwidth=4
vim.opt.softtabstop=4
vim.opt.expandtab = true
vim.opt.wrap = false


-- custom keymap bindings for default controls
vim.keymap.set('n', '<leader>w', ':write<CR>')
vim.keymap.set('n', '<leader>q', ':quit<CR>', {noremap = true, silent = true})
vim.keymap.set("n", "<leader>v", ":vsplit<CR><C-w>w") -- vertically split window and select it
vim.keymap.set("n", "<leader>b", ":split<CR><C-w>w") -- vertically split window and select it

-- Define key mappings for navigating windows with arrow keys
vim.api.nvim_set_keymap('n', '<leader><Up>', '<C-w>k', { noremap = true, silent = true })    -- Move to window above
vim.api.nvim_set_keymap('n', '<leader><Down>', '<C-w>j', { noremap = true, silent = true })  -- Move to window below
vim.api.nvim_set_keymap('n', '<leader><Left>', '<C-w>h', { noremap = true, silent = true })  -- Move to window left
vim.api.nvim_set_keymap('n', '<leader><Right>', '<C-w>l', { noremap = true, silent = true }) -- Move to window right

