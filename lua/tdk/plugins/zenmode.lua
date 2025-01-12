return {
  "folke/zen-mode.nvim",
  opts = {
    window = {
      options = {
        signcolumn = "no",
        number = false,
        relativenumber = false,
        cursorline = false,
        cursorcolumn = false,
        foldcolumn = "0",
        list = false,
      },
    },
    plugins = {
      tmux = {
        enabled = true,
      },
    },
  },
}
