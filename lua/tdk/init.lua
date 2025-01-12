require("tdk.core")
require("tdk.lazy")

-- vim.cmd.colorscheme("rose-pine-moon")
-- vim.cmd.colorscheme("kanagawa")
-- vim.cmd.colorscheme("synthwave84")
-- vim.cmd.colorscheme("tokyonight-night") -- available themes: night, storm, moon, day
-- vim.cmd.colorscheme("everforest")
vim.cmd.colorscheme("gruvbox")
-- vim.cmd.colorscheme("tundra")
-- vim.cmd.colorscheme("poimandres")
-- vim.cmd.colorscheme("catppuccin-macchiato")
-- vim.cmd("colorscheme github_dark")
-- vim.cmd('colorscheme ayu-dark')
-- vim.cmd('colorscheme ayu-dark')

-- vim.g.moonflyTransparent = true
-- vim.g.moonflyTerminalColors = false
-- vim.cmd("colorscheme moonfly")

-- Transparent bg for line number column
vim.api.nvim_set_hl(0, "SignColumn", { bg = "none" })
vim.api.nvim_set_hl(0, "LineNr", { bg = "none" })

vim.opt.conceallevel = 2
vim.opt.concealcursor = "nc"

-- Diagnostics
vim.diagnostic.config({
  underline = false,
  signs = true,
  virtual_text = true,
  float = {
    show_header = true,
    source = "if_many",
    border = "rounded",
    focusable = false,
  },
  update_in_insert = false, -- default to false
  severity_sort = false,    -- default to false
})
