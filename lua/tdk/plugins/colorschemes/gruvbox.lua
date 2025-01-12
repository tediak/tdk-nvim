return {
  "ellisonleao/gruvbox.nvim",
  priority = 1000,
  config = true,
  opts = {
    terminal_colors = true,
    bold = true,
    italic = {
      strings = false,
      emphasis = false,
      comments = true,
      operators = false,
      folds = true,
    },
    transparent_mode = true,
    overrides = {
      BlinkCmpMenu = { link = "NormalFloat" },
      BlinkCmpScrollbarThumb = { link = "NormalFloat" },
      BlinkCmpScrollbarGutter = { link = "NormalFloat" }
    },
  },
}
