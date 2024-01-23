-- navigation remaps
vim.keymap.set({"n", "v"}, "<S-j>", "10j")
vim.keymap.set({"n", "v"}, "<S-k>", "10k")
vim.keymap.set({"n", "v"}, "<S-h>", "10h")
vim.keymap.set({"n", "v"}, "<S-l>", "10l")

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
