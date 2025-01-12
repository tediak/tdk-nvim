return {
  "nvim-lualine/lualine.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    local custom_gruvbox = require 'lualine.themes.gruvbox'

    -- This color palette is hardcoded because I don't like auto lualine theme for gruvbox:
    custom_gruvbox.normal.a.bg = '#FB4A34'
    custom_gruvbox.normal.c.bg = '#FB4A3400'
    custom_gruvbox.insert.a.bg = '#83A598'
    custom_gruvbox.insert.c.bg = '#83A59800'
    custom_gruvbox.visual.a.bg = '#FE8018'
    custom_gruvbox.visual.c.bg = '#FE801800'
    custom_gruvbox.command.a.bg = '#B8BA26'
    custom_gruvbox.command.c.bg = '#B8BA2600'
    custom_gruvbox.command.c.fg = '#A79A84'

    local colorscheme_is_gruvbox = vim.g.colors_name == 'gruvbox'

    require('lualine').setup {
      options = {
        icons_enabled = true,
        theme = colorscheme_is_gruvbox and custom_gruvbox or 'auto',
        component_separators = { left = '', right = '' }, --    
        section_separators = { right = '', left = '' }, --    
        disabled_filetypes = {
          statusline = {},
          winbar = {},
        },
        ignore_focus = {},
        always_divide_middle = true,
        globalstatus = false,
        refresh = {
          statusline = 1000,
          tabline = 1000,
          winbar = 1000,
        }
      },
      sections = {
        lualine_a = { 'mode', 'location' },
        lualine_b = { 'branch', 'diff', 'diagnostics' },
        lualine_c = { 'filename' },
        lualine_x = { 'filetype' },
        lualine_y = { 'progress' },
        lualine_z = {}
      },
      inactive_sections = {
        lualine_a = {},
        lualine_b = {},
        lualine_c = { 'filename' },
        lualine_x = {},
        lualine_y = {},
        lualine_z = {}
      },
      tabline = {},
      winbar = {},
      inactive_winbar = {},
      extensions = {},
    }
  end,
}
