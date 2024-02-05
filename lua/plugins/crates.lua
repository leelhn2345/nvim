return {
  "saecki/crates.nvim",
  event = { "BufRead Cargo.toml" },
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    local crates = require("crates")
    crates.setup({
      popup = {
        autofocus = true,
      },
    })

    local opts = { silent = true }

    vim.keymap.set("n", "<leader>cf", crates.show_features_popup, opts)
  end,
}
