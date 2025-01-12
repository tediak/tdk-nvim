return {
  "epwalsh/obsidian.nvim",
  version = "*",
  lazy = false,
  ft = "markdown",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  opts = {
    workspaces = {
      -- TODO: add your vaults if you are using Obsidian
      {
        name = "personal",
        path = "~/Vault",
        overrides = {
          notes_subdir = "+"
        }
      },
    },
  },
  mappings = {
    -- Smart action depending on context, either follow link or toggle checkbox.
    -- <cr> on a link -> enter link
    -- <cr> on a bullet list or paragraph -> toggle between different checkbox states
    ["<cr>"] = {
      action = function()
        return require("obsidian").util.smart_action()
      end,
      opts = { buffer = true, expr = true },
    },
  },
  -- TODO: change to new notes directory
  -- new_notes_location = "+",
  wiki_link_func = "prepend_note_path",
  picker = {
    name = "telescope.nvim",
    note_mappings = {
      new = "<C-x>",
      insert_link = "<C-l>",
    },
    tag_mappings = {
      tag_note = "<C-x>",
      insert_tag = "<C-l>",
    },
  },
}
