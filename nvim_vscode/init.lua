-- Main Neovim configuration
-- Check if running inside VSCode or as standalone

-- Common settings for both VSCode and regular Neovim
require "user.options"

if vim.g.vscode then
  -- VSCode-specific settings
  require "user.vscode_keymaps"

  -- VSCode theme integration
  vim.api.nvim_exec([[
      " THEME CHANGER
      function! SetCursorLineNrColorInsert(mode)
          " Insert mode: blue
          if a:mode == "i"
              call VSCodeNotify('nvim-theme.insert')

          " Replace mode: red
          elseif a:mode == "r"
              call VSCodeNotify('nvim-theme.replace')
          endif
      endfunction

      augroup CursorLineNrColorSwap
          autocmd!
          autocmd ModeChanged *:[vV\x16]* call VSCodeNotify('nvim-theme.visual')
          autocmd ModeChanged *:[R]* call VSCodeNotify('nvim-theme.replace')
          autocmd InsertEnter * call SetCursorLineNrColorInsert(v:insertmode)
          autocmd InsertLeave * call VSCodeNotify('nvim-theme.normal')
          autocmd CursorHold * call VSCodeNotify('nvim-theme.normal')
          autocmd ModeChanged [vV\x16]*:* call VSCodeNotify('nvim-theme.normal')
      augroup END
  ]], false)
else
  -- Standalone Neovim-specific settings
  require "user.neovim_keymaps"
  
  -- You can add plugin manager setup here (like packer, vim-plug, or lazy.nvim)
  -- To add plugins, create a plugins.lua file and uncomment the line below
  -- require "user.plugins"
end