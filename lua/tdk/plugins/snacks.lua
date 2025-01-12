return {
  "folke/snacks.nvim",
  priority = 1000,
  lazy = false,
  opts = {
    bigfile = { enabled = true },
    dashboard = {
      enabled = true,

      preset = {
        keys = {
          { icon = " ", key = "f", desc = "Find File", action = "<leader><leader>" },
          { icon = " ", key = "n", desc = "New File", action = ":ene | startinsert" },
          {
            icon = " ",
            key = "g",
            desc = "Find Text",
            action = ":lua Snacks.dashboard.pick('live_grep')",
          },
          {
            icon = " ",
            key = "r",
            desc = "Recent Files",
            action = ":lua Snacks.dashboard.pick('oldfiles')",
          },
          {
            icon = " ",
            key = "c",
            desc = "Config",
            action = ":lua Snacks.dashboard.pick('files', {cwd = vim.fn.stdpath('config')})",
          },
          { icon = " ", key = "s", desc = "Restore Session", section = "session" },
          {
            icon = "󰒲 ",
            key = "L",
            desc = "Lazy",
            action = ":Lazy",
            enabled = package.loaded.lazy ~= nil,
          },
          { icon = " ", key = "q", desc = "Quit", action = ":qa" },
        },
      },
    },
    indent = {
      enabled = false,
      only_scope = true,
      hl = "SnacksIndent",
      only_current = true,
    },
    input = { enabled = true, icon = "" },
    -- notifier = { enabled = true },
    -- quickfile = { enabled = true },
    scroll = {
      enabled = false,
      animate = {
        duration = { step = 10, total = 200 },
        easing = "linear",
        spamming = 10,
      },
      statuscolumn = { enabled = true },
      -- TODO: if you are using lazygit, you can configure it here. lazygit can be opened inside neovim by <leader>lg
      lazygit = {
        enabled = true,
        theme = {
          [241] = { fg = "Special" },
          activeBorderColor = { fg = "MatchParen", bold = true },
          cherryPickedCommitBgColor = { fg = "Identifier" },
          cherryPickedCommitFgColor = { fg = "Function" },
          defaultFgColor = { fg = "Normal" },
          inactiveBorderColor = { fg = "FloatBorder" },
          optionsTextColor = { fg = "Function" },
          searchingActiveBorderColor = { fg = "MatchParen", bold = true },
          selectedLineBgColor = { bg = "Visual" }, -- set to `default` to have no background colour
          unstagedChangesColor = { fg = "DiagnosticError" },
        },
      },
      zen = {
        enabled = true,
        toggles = {
          dim = false,
          git_signs = false,
          line_number = false,
        },
        show = {
          statusline = false,
          tabline = false,
        },
      },
      terminal = {
        enabled = false,
        style = "float",
      },
      keys = {
        q = "hide",
      },
    },
  },
}
