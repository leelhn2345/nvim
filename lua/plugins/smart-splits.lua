return {
  "mrjones2014/smart-splits.nvim",
  event = "VeryLazy",
  config = function()
    local smartSplits = require("smart-splits")

    local keymap = vim.keymap
    local opts = { silent = true }

    opts.desc = "Resize rightwards"
    keymap.set("n", "=", smartSplits.resize_right, opts)

    opts.desc = "Resize leftwards"
    keymap.set("n", "-", smartSplits.resize_left, opts)

    opts.desc = "Resize upwards"
    keymap.set("n", "+", smartSplits.resize_up, opts)

    opts.desc = "Resize downwards"
    keymap.set("n", "_", smartSplits.resize_down, opts)

    opts.desc = "Go left pane"
    keymap.set("n", "<C-h>", smartSplits.move_cursor_left, opts)

    opts.desc = "Go bottom pane"
    keymap.set("n", "<C-j>", smartSplits.move_cursor_down, opts)

    opts.desc = "Go top pane"
    keymap.set("n", "<C-k>", smartSplits.move_cursor_up, opts)

    opts.desc = "Go right pane"
    keymap.set("n", "<C-l>", smartSplits.move_cursor_right, opts)
  end,
}
