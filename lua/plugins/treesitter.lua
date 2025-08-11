return {
  {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    opts = function()
      return{
        ensure_installed = { "lua", "python", "vim" }, -- Apenas esses parsers serão instalados
        highlight = { enable = true },
        indent = { enable = true },
      }
    end,
  },
}