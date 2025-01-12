-- TODO: main keymap file
vim.g.mapleader = " "
vim.g.maplocalleader = " "

local keymap = vim.keymap

keymap.set("n", "<C-c>", "<Esc>", { desc = "Idk" })

keymap.set("n", "<leader>ex", vim.cmd.Ex, { desc = "Exit buffer (explore)" })
keymap.set(
  "n",
  "<leader>wex",
  ":w<Bar>Ex<CR>",
  { noremap = true, silent = true, desc = "Save and exit buffer (explore)" }
)

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split window" })

keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Center the screen after moving a half page down" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Center the screen after moving a half page up" })
keymap.set("n", "gg", "ggzz", { desc = "Center a screen after moving to the top of the screen" })
keymap.set("n", "G", "Gzz", { desc = "Center a screen after moving to the bottom of the screen" })

keymap.set("n", "<C-w><left>", "<C-w><")
keymap.set("n", "<C-w><right>", "<C-w>>")
keymap.set("n", "<C-w><up>", "<C-w>+")
keymap.set("n", "<C-w><down>", "<C-w>-")

keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, { desc = "Go to next diagnostic point" })
keymap.set("n", "<C-j>", function()
  vim.diagnostic.goto_next()
end, { desc = "Go to next diagnostic point" })

-- vim.api.nvim_set_keymap("i", "<C-/>", 'copilot#Accept("<CR>")', { expr = true, silent = true })
vim.keymap.set("n", "<C-\\>", "<Cmd>ToggleTerm<CR>", { noremap = true, silent = true })

-- switch through tabs

keymap.set("n", "<leader>tc", ":tabnew<CR>", { desc = "New tab" })
keymap.set("n", "<leader>tx", ":tabc<CR>", { desc = "Close tab" })
keymap.set("n", "<leader>tn", ":tabn<CR>", { desc = "Next Tab" })
keymap.set("n", "<leader>tp", ":tabp<CR>", { desc = "Previous Tab" })

-- ToggleTerm
keymap.set("n", "<leader>t1", ":1ToggleTerm name=terminal1<CR>")
keymap.set("n", "<leader>t2", ":2ToggleTerm name=terminal2<CR>")
keymap.set("n", "<leader>t3", ":3ToggleTerm name=terminal3<CR>")
keymap.set("n", "<leader>t4", ":4ToggleTerm name=terminal4<CR>")
keymap.set("n", "<leader>tt", ":TermSelect")

-- LazyGit
keymap.set("n", "<leader>lg", function()
  Snacks.lazygit.open()
end)

-- Zen
keymap.set("n", "<leader>zz", ":ZenMode<CR>")
