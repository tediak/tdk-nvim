require("tdk.core.options")
require("tdk.core.remap")

if vim.g.neovide then
  vim.o.guifont = "Berkeley Mono:h12.5"
  vim.opt.linespace = 0
  vim.g.neovide_transparency = 0.9
  vim.g.neovide_normal_opacity = 0.9
  vim.g.neovide_window_blurred = true
  vim.g.neovide_show_border = true
  vim.g.neovide_fullscreen = false
  vim.g.neovide_cursor_animate_in_insert_mode = false
  vim.g.neovide_cursor_animate_command_line = false
  vim.g.neovide_cursor_vfx_mode = "railgun"
end
