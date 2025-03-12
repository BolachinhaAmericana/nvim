-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- Big-Brain keymaps

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- move Visual block Up/Down
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") 
    
vim.keymap.set("n", "J", "msJ`z")            -- append Line with previouse line

vim.keymap.set("n", "<C-d>", "<C-d>zz")      -- mid-page scroll 
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")            -- prev/next search term in the middle
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dP")    -- replace clipboard with highlighing without yanking the highlighting

vim.keymap.set("v", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

vim.keymap.set("n", "<leader>s", "")
-- Undotree
vim.keymap.set("n", "<leader>u", vim.cmd.UndotreeToggle)

