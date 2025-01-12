return {
  "neanias/everforest-nvim",
  version = false,
  lazy = false,
  priority = 1000, -- make sure to load this before all the other start plugins
  -- Optional; default configuration will be used if setup isn't called.
  config = function()
    require("everforest").setup({
      background = "medium",
      transparent_background_level = 2,
      italics = false,
      disable_italic_comments = true,
      sign_column_background = "none",
      ui_contrast = "high",
      dim_inactive_windows = true,
      diagnostic_text_highlight = false,
      diagnostic_virtual_text = "coloured",
      diagnostic_line_highlight = true,
      spell_foreground = true,

      show_eob = true,
      float_style = "bright",
      inlay_hints_background = "none",
    })
  end,
}
