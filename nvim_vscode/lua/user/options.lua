-- Neovim options configuration
-- Options are shared between VSCode Neovim and regular Neovim unless specified

-- Indentation settings
vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true

-- Display settings
vim.opt.wrap = false
vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50
vim.opt.colorcolumn = "80"

-- Search settings
vim.opt.hlsearch = false
vim.opt.incsearch = true

-- Colors
vim.opt.termguicolors = true

-- Commented settings that might be useful in the future
-- Undotree related settings
-- vim.opt.undodir = vim.fn.expand("~") .. "/.vim/undodir"
-- vim.opt.undofile = true

-- Enable relative line numbers with absolute number on current line
vim.opt.number = true       -- Show current line number
vim.opt.relativenumber = true  -- Show relative line numbers

-- Clipboard settings
-- Empty value to separate Neovim clipboard from system clipboard
vim.opt.clipboard = ""

-- Conditional settings based on VSCode or regular Neovim
if vim.g.vscode then
  -- VSCode-specific settings
  -- Add any VSCode-specific settings here
else
  -- Regular Neovim-specific settings
  -- Add any settings that should only apply to regular Neovim here
  
  -- For example, cursor line highlight (not needed in VSCode)
  vim.opt.cursorline = true
end