return {
  "nvim-telescope/telescope.nvim",
  branch = "0.1.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "folke/todo-comments.nvim",
  },
  config = function()
    local telescope = require("telescope")
    local builtin = require("telescope.builtin")
    local utils = require("telescope.utils")
    local telescope_actions = require("telescope.actions")

    telescope.setup({
      defaults = {
        layout_strategy = "flex",
        border = true,
        path_display = {
          "tail",
        },
        sorting_strategy = "descending",
        mappings = {
          i = {
            ["<esc>"] = telescope_actions.close,
            ["<C-j>"] = telescope_actions.move_selection_next,
            ["<C-k>"] = telescope_actions.move_selection_previous,
          },
        },
      },
      extensions = {
        smart_open = {
          show_scores = false,
        },
      },
    })

    vim.keymap.set("n", "<leader><leader>", function()
      require("telescope").extensions.smart_open.smart_open({
        cwd_only = true,
        filename_first = true,
      })
    end, { noremap = true, silent = true })

    -- TODO: you may want to change telescope key bindings
    vim.keymap.set("n", "<leader>fs", function()
    end, { desc = "Live grep" })

    vim.keymap.set("n", "<leader>fd", function()
      builtin.find_files({ cwd = utils.buffer_dir() })
    end, { desc = "Fuzzy Finder in current dir" })

    vim.keymap.set("n", "<leader>fr", builtin.oldfiles, { desc = "Search through recently opened files" })

    vim.keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<CR>", { desc = "Find todos" })

    vim.keymap.set("n", "<leader>fc", function()
      builtin.colorscheme({ enable_preview = true })
    end, { desc = "Change color scheme" })

    vim.keymap.set("n", "<leader>pp", builtin.registers, { desc = "Look into registers" })

    vim.keymap.set("n", "<leader>fo", "<cmd>ObsidianWorkspaces<cr>", { desc = "Open Obsidian workspaces" })
  end,
}
