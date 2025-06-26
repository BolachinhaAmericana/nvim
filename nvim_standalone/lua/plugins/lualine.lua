return {
  {
    "nvim-lualine/lualine.nvim",
    opts = function(_, opts)
      return vim.tbl_deep_extend("force", opts, {
        options = {
          theme = "auto",               -- Tema a ser utilizado ("auto", "gruvbox", "tokyonight", etc.)
          icons_enabled = true,         -- Ativa/desativa os ícones
          section_separators = { left = " ", right = " "},  -- Separadores de seção
          component_separators = { left = " ", right = " " }, -- Separadores de componentes
          disabled_filetypes = { "NvimTree", "packer" },  -- Tipos de arquivos que desabilitam a lualine
          always_divide_middle = true,  -- Divide sempre o meio da linha
          globalstatus = false,         -- Se deve usar statusline global
        },

        sections = {
          -- Seção A (geralmente exibe o modo de operação)
          lualine_a = { "mode" },          

          -- Seção B (informações sobre o repositório, diffs e diagnósticos)
          lualine_b = { 
            "branch",           -- Exibe o nome do ramo (branch) do git
            "diff",             -- Exibe as diferenças do git
            "diagnostics",      -- Exibe erros, avisos e outros diagnósticos
          },

          -- Seção C (exibe informações do arquivo)
          lualine_c = { 
            "filename",         -- Nome do arquivo
            { "filetype", icons_enabled = true }, -- Tipo de arquivo com ícone
          },

          -- Seção D (informações sobre o arquivo como codificação, formatação, etc)
          lualine_x = { 
            "encoding",         -- Codificação do arquivo
            "fileformat",       -- Formato do arquivo (Unix, Windows, etc.)
            "filetype",         -- Tipo de arquivo (por exemplo, "python")
          },

          -- Seção E (informações sobre o progresso do arquivo)
          lualine_y = { 
            "progress",         -- Exibe o progresso no arquivo atual
          },

          -- Seção Z (localização do cursor no arquivo)
          lualine_z = { 
            "location",         -- Localização no arquivo (linha/coluna)
          },
        },

        -- Componentes adicionais
        inactive_sections = {
          lualine_a = { "filename" },
          lualine_b = {},
          lualine_c = { "filename" },
          lualine_x = { "fileformat" },
          lualine_y = {},
          lualine_z = { "location" },
        },

        -- Componentes de diagnósticos
        extensions = { "fugitive", "nvim-tree", "quickfix" },
        
        -- Comando para pegar o nome do branch no git
        branch = {
          icon = "",  -- Ícone que será exibido ao lado do nome do branch
        },

        -- Diagnostics configurações
        diagnostics = {
          sources = { "nvim_lsp" },  -- Fontes dos diagnósticos (nvim_lsp ou coc)
          sections = { "error", "warn", "info", "hint" }, -- O que exibir nos diagnósticos
          symbols = { error = "", warn = "", info = "", hint = "" },
          colored = true,  -- Diagnósticos coloridos
        },

        -- Comando para exibir o status do diff (modificado/alterado)
        diff = {
          symbols = { added = " ", modified = " ", removed = " " },
        },

        -- Statusline para exibir o número de linhas, colunas e outras informações úteis
        statusline = {
          enable = true,
          format = "%l/%L : %c",  -- Formato do statusline (linhas/colunas)
        },

        -- Configurações avançadas para visualização
        extensions = {
          "fugitive",  -- Exibe informações sobre o Git
          "quickfix",   -- Exibe a lista de erros/aviso
          "nvim-tree",  -- Exibe informações sobre a árvore de arquivos
        },
      })
    end,
  },
}
