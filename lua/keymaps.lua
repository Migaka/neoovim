local opts = { noremap = true, silent = true }

local term_opts = { silent = true }

-- Shorten function name
local keymap = vim.api.nvim_set_keymap

--Remap space as leader key
keymap("", "<Space>", "<Nop>", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- kj to normal mode
keymap("ii", "<Esc>")

-- Save with Ctrl + S
keymap("<C-s>", ":w<CR>")

-- Close buffer
keymap("<C-c>", ":q<CR>")

-- Move around windows
keymap("<C-h>", "<C-w>h")
keymap("<C-j>", "<C-w>j")
keymap("<C-k>", "<C-w>k")
keymap("<C-l>", "<C-w>l")

-- Splits
keymap("<leader>ws", ":split<CR>")
keymap("<leader>vs", ":vsplit<CR>")

-- Delete buffer
keymap("<A-w>", ":bd<CR>")

-- Yank to end of line
keymap("Y", "y$")

-- Copy to system clippboard
keymap("<leader>y", '"+y')
keymap("<leader>y", '"+y')

-- Paste from system clippboard
keymap("<leader>p", '"+p')
keymap("<leader>p", '"+p')

-- Clear highlight search
keymap("<leader>nh", ":nohlsearch<CR>")