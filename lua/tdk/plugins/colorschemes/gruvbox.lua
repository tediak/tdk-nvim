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
      BlinkCmpMenuBorder = { bg = "#FE8018", fg = "#FE8018" },
      BlinkCmpMenu = { link = "NormalFloat" },
      BlinkCmpScrollbarThumb = { link = "NormalFloat" },
      BlinkCmpScrollbarGutter = { link = "NormalFloat" }
    },
  },
}
