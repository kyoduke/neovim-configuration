vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

if vim.g.vscode then
	require "user.vscode_keymaps"
	print("vscode settings loaded.")
else

	print("not in vscode")
end





