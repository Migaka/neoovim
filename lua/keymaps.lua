local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- kj to normal mode
keymap("i", "ii", "<Esc>", opts)

-- Save with Ctrl + S
keymap("i", "<C-s>", ":w<CR>", opts)

-- Close buffer
keymap("n", "<C-c>", ":q<CR>", opts)

-- Move around windows
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Splits
keymap("n", "<leader>ws", ":split<CR>", opts)
keymap("n", "<leader>vs", ":vsplit<CR>", opts)

-- Delete buffer
keymap("n", "<A-w>", ":bd<CR>", opts)

-- Yank to end of line
keymap("n", "Y", "y$", opts)

-- Copy to system clippboard
keymap("n", "<leader>y", '"+y', opts)

-- Paste from system clippboard
keymap("n", "<leader>p", '"+p', opts)

-- Clear highlight search
keymap("n", "<leader>nh", ":nohlsearch<CR>", opts)