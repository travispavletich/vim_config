-- navigation remaps
vim.keymap.set({"n", "v"}, "<S-j>", "10j")
vim.keymap.set({"n", "v"}, "<S-k>", "10k")
vim.keymap.set({"n", "v"}, "<S-h>", "10h")
vim.keymap.set({"n", "v"}, "<S-l>", "10l")

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>fs", "*")


-- System clipboard remaps
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+y$")
vim.keymap.set("v", "<leader>Y", "\"+y$")

-- Paste without replacing buffer
vim.keymap.set("v", "<leader>p", "\"0p")

-- Needed to yank out to system clipboard
vim.g.clipboard = {name = "TMUX OSC-52", copy = {["*"] = {"tmux", "load-buffer", "-w", "-"}, ["+"] = {"tmux", "load-buffer", "-w", "-"}}, paste = {["*"] = {"tmux", "save-buffer", "-"}, ["+"] = {"tmux", "save-buffer", "-"}}}
vim.keymap.set("n", "<leader>l", ":nohlsearch<cr>:diffupdate<cr>:syntax sync fromstart<cr><c-l>")
