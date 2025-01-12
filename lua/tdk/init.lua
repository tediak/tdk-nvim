require("tdk.core")
require("tdk.lazy")

vim.cmd.colorscheme("gruvbox")

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
