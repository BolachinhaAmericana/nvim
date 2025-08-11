-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- solving issue with difff & diff.
-- vim.g.undotree_DiffCommand = os.getenv("DIFFF") or "diff"

vim.g.undotree_DiffCommand = "~\\Desktop\\Apps\\diffutils\\bin\\difff.exe"
