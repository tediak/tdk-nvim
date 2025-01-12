return {
  "water-sucks/darkrose.nvim",
  lazy = false,
  priority = 1000,
  config = function()
    require("darkrose").setup({
      -- Override colors
      colors = {
        orange = "#F87757",
      },
      -- Override existing or add new highlight groups
      overrides = function(c)
        return {
          Class = { fg = c.magenta },
          ["@variable"] = { fg = c.fg_dark },
        }
      end,
      -- Styles to enable or disable
      styles = {
        bold = true,      -- Enable bold highlights for some highlight groups
        italic = true,    -- Enable italic highlights for some highlight groups
        underline = true, -- Enable underline highlights for some highlight groups
      }
    })

    -- vim.cmd.colorscheme("darkrose")

    vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
    vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
  end
}
