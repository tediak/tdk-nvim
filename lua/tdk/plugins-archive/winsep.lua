return {
  "nvim-zh/colorful-winsep.nvim",
  config = function()
    require("colorful-winsep").setup({
      hi = {
        fg = "#FB4A34",
      },
    })
  end,
  event = { "WinLeave" },
}
