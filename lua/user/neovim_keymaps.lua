local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

-----------------------    STANDALONE NEOVIM KEYMAPS

-- These keymaps only apply when using regular Neovim (not VSCode)

-- remap leader key (already set in vscode_keymaps.lua but duplicated here for completeness)
keymap("n", "<Space>", "", opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

-- yank/paste to system clipboard
keymap({"n", "v"}, "<leader>y", '"+y', opts)
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

-- Example file navigation keymaps for regular Neovim
-- Uncomment these if you want to use them

-- File explorer
-- keymap("n", "<leader>e", ":Lexplore<CR>", opts)

-- Buffer navigation
-- keymap("n", "<leader>bn", ":bnext<CR>", opts)
-- keymap("n", "<leader>bp", ":bprevious<CR>", opts)
-- keymap("n", "<leader>bd", ":bdelete<CR>", opts)

-- Split navigation
keymap("n", "<C-h>", "<C-w>h", opts)
keymap("n", "<C-j>", "<C-w>j", opts)
keymap("n", "<C-k>", "<C-w>k", opts)
keymap("n", "<C-l>", "<C-w>l", opts)

-- Resize windows
keymap("n", "<C-Up>", ":resize +2<CR>", opts)
keymap("n", "<C-Down>", ":resize -2<CR>", opts)
keymap("n", "<C-Left>", ":vertical resize -2<CR>", opts)
keymap("n", "<C-Right>", ":vertical resize +2<CR>", opts)

-- Add more keymaps for standalone Neovim as needed
