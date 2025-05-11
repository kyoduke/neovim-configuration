if vim.g.vscode then
  vim.g.mapleader = " "
  vim.g.maplocalleader = " "
  require("vscode_user.vscode_keymaps")
  print("vscode settings loaded.")
else
  -- bootstrap lazy.nvim, LazyVim and your plugins
  require("config.lazy")
end
