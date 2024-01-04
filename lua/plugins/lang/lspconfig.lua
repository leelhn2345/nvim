return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "hrsh7th/cmp-nvim-lsp",
    "simrat39/rust-tools.nvim",
    { "antosha417/nvim-lsp-file-operations", config = true },
    {
      -- breadcrumbs
      "SmiteshP/nvim-navbuddy",
      dependencies = {
        "SmiteshP/nvim-navic",
        "MunifTanjim/nui.nvim",
      },
      opts = { lsp = { auto_attach = true } },
    },
    "b0o/schemastore.nvim",
    -- { "folke/neodev.nvim", opts = {} },
  },
  config = function()
    -- import lspconfig plugin
    local lspconfig = require("lspconfig")

    -- import cmp-nvim-lsp plugin
    local cmp_nvim_lsp = require("cmp_nvim_lsp")

    -- used to enable autocompletion (assign to every lsp server config)
    local capabilities = cmp_nvim_lsp.default_capabilities()

    -- Change the Diagnostic symbols in the sign column (gutter)
    local signs =
      { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end

    -- configure html server
    lspconfig["html"].setup({
      capabilities = capabilities,
    })

    -- configure typescript server
    lspconfig["vtsls"].setup({
      capabilities = capabilities,
    })

    -- configure eslint server
    lspconfig["eslint"].setup({
      capabilities = capabilities,
    })

    -- configure css server
    lspconfig["cssls"].setup({
      capabilities = capabilities,
    })

    -- configure python server
    lspconfig["pyright"].setup({
      capabilities = capabilities,
    })

    -- configure ruff server
    lspconfig["ruff_lsp"].setup({
      capabilities = capabilities,
    })

    -- configure json server
    lspconfig["jsonls"].setup({
      capabilities = capabilities,
      settings = {
        json = {
          schemas = require("schemastore").json.schemas(),
          validate = { enable = true },
        },
      },
    })

    -- configure toml server
    lspconfig["taplo"].setup({
      capabilities = capabilities,
    })

    -- configure yaml server
    lspconfig["yamlls"].setup({
      capabilities = capabilities,
    })

    -- configure rust server (special)
    --
    -- check out https://rust-analyzer.github.io/manual.html
    require("rust-tools").setup({
      server = {
        capabilities = capabilities,
        settings = {
          ["rust-analyzer"] = {
            check = {
              command = "clippy",
            },
          },
        },
      },
    })

    -- configure lua server (with special settings)
    lspconfig["lua_ls"].setup({
      capabilities = capabilities,
      settings = { -- custom settings for lua
        Lua = {
          -- make the language server recognize "vim" global
          diagnostics = {
            globals = { "vim" },
          },
          workspace = {
            -- make language server aware of runtime files
            library = {
              [vim.fn.expand("$VIMRUNTIME/lua")] = true,
              [vim.fn.stdpath("config") .. "/lua"] = true,
            },
          },
        },
      },
    })
  end,
}
