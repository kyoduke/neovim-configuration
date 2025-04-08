local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }
-- local vscode = require('vscode')

-- remap leader key
keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- save current tab
keymap({"n", "v"}, "<leader>w", ":w<CR>", opts)

-- close current tab
keymap({"n", "v"}, "<leader>q", "<cmd>lua require('vscode').action('workbench.action.closeActiveEditor')<CR>")

-- yank to system clipboard
keymap({"n", "v"}, "<leader>y", '"+y', opts)

-- paste from system clipboard
keymap({"n", "v"}, "<leader>p", '"+p', opts)

-- better indent handling
keymap("v", "<", "<gv", opts)
keymap("v", ">", ">gv", opts)

-- move text up and down
keymap("v", "J", ":m .+1<CR>==", opts)
keymap("v", "K", ":m .-2<CR>==", opts)
keymap("x", "J", ":move '>+1<CR>gv-gv", opts)
keymap("x", "K", ":move '<-2<CR>gv-gv", opts)

-- paste preserves primal yanked piece
keymap("v", "p", '"_dP', opts)

-- removes highlighting after escaping vim search
keymap("n", "<Esc>", "<Esc>:noh<CR>", opts)

-- open quick open
keymap({"n", "v"}, "<leader>ff", "<cmd>lua require('vscode').action('workbench.action.quickOpen')<CR>")


-- switch between tabs
keymap({"n", "v"}, "<S-l>", "<cmd>lua require('vscode').action('workbench.action.nextEditor')<CR>")
keymap({"n", "v"}, "<S-h>", "<cmd>lua require('vscode').action('workbench.action.previousEditor')<CR>")