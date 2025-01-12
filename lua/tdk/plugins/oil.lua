return {
  "stevearc/oil.nvim",
  opts = {},
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local oil = require("oil")
    oil.setup({
      columns = {
        -- "mtime",
        "icon",
      },
      default_file_explorer = true,
      cleanup_delay_ms = 2000,
      keymaps = {
        ["g?"] = "actions.show_help",
        ["<CR>"] = "actions.select",
        ["<C-s>"] = {
          "actions.select",
          opts = { vertical = true },
          desc = "Open the entry in a vertical split",
        },
        ["<C-h>"] = false,
        ["<C-t>"] = { "actions.select", opts = { tab = true }, desc = "Open the entry in new tab" },
        ["<C-p>"] = "actions.preview",
        ["<C-c>"] = "actions.close",
        ["<C-l>"] = false,
        ["-"] = "actions.parent",
        ["_"] = "actions.open_cwd",
        ["`"] = "actions.cd",
        ["~"] = { "actions.cd", opts = { scope = "tab" }, desc = ":tcd to the current oil directory" },
        ["gs"] = "actions.change_sort",
        ["gx"] = "actions.open_external",
        ["g."] = "actions.toggle_hidden",
        ["g\\"] = "actions.toggle_trash",
        ["gl"] = "actions.refresh",
      },
      view_options = {
        signcolumn = "number",
        cursorcolumn = false,
        show_hidden = true,
        list = true,
        lsp_file_methods = {
          enabled = true,
          timeout_ms = 2000,
          autosave_changes = true,
        },
      },
    })
    vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
  end,
}
