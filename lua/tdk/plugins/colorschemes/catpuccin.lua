return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  config = function()
    require('catppuccin').setup({
      transparent_background = true,
      show_end_of_buffer = false,
      integrations = {
        barbecue = {
          dim_context = false,
          dim_dirname = false,
          bold_basename = true,
          alt_background = false
        },
        beacon = true,
      }
    })
  end
}
