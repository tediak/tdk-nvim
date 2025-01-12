return {
  "neovim/nvim-lspconfig",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    {
      "folke/lazydev.nvim",
      ft = "lua",
      opts = {}
    },
    { "williamboman/mason.nvim" },
    { "williamboman/mason-lspconfig.nvim" },
    {
      "saghen/blink.cmp",
      version = "*",
      opts = {
        keymap = {
          -- TODO: You may want to use pre-defined presets, like 'default', 'super-tab', and others (see more: https://cmp.saghen.dev/configuration/keymap.html)
          preset = 'none',
          ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
          ['<C-e>'] = { 'hide' },
          ['<C-j>'] = { 'select_next', 'fallback' },
          ['<C-k>'] = { 'select_prev', 'fallback' },
          ['<C-S-j>'] = { 'scroll_documentation_down', 'fallback' },
          ['<C-S-k>'] = { 'scroll_documentation_up', 'fallback' },
          ['<CR>'] = {
            function(cmp)
              if cmp.snippet_active() then
                return cmp.accept()
              else
                return cmp.select_and_accept()
              end
            end,
            'snippet_forward',
            'fallback'
          },
          ['<Tab>'] = {
            function(cmp)
              if cmp.snippet_active() then
                return cmp.accept()
              else
                return cmp.select_and_accept()
              end
            end,
            'snippet_forward',
            'fallback'
          },
          ['<S-Tab>'] = { 'snippet_backward', 'fallback' },
          cmdline = {
            preset = 'none',
            ['<Down>'] = { 'select_next', 'fallback' },
            ['<Up>'] = { 'select_prev', 'fallback' },
            ['<C-j>'] = { 'select_next', 'fallback' },
            ['<C-k>'] = { 'select_prev', 'fallback' },
          }
        },
        completion = {
          keyword = {
            range = "full",
          },
          accept = {
            auto_brackets = { enabled = true }
          },
          list = {
            selection = { preselect = true, auto_insert = false }
          },
          ghost_text = {
            enabled = true,
          },
          documentation = {
            auto_show = true,
            auto_show_delay_ms = 400,
          },
          menu = {
            auto_show = true,
            draw = {
              treesitter = { "lsp" },
              columns = {
                { "kind_icon", "label", "label_description", gap = 1, },
                { "kind",      gap = 1 },
              }
            }
          }
        },
        -- From github page https://github.com/folke/lazydev.nvim
        sources = {
          default = { "lazydev", "lsp", "path", "snippets", "buffer" },
          providers = {
            lazydev = {
              name = "LazyDev",
              module = "lazydev.integrations.blink",
              score_offset = 100,
            },
          },
        },
      },
    },
  },
  config = function()
    local lspconfig = require("lspconfig")
    local mason = require("mason")
    local mason_lspconfig = require("mason-lspconfig")

    mason.setup()
    mason_lspconfig.setup()

    mason_lspconfig.setup_handlers({
      function(server_name)
        local capabilities = require("blink.cmp").get_lsp_capabilities()
        lspconfig[server_name].setup({
          capabilities = capabilities,
        })
      end,
    })


    vim.api.nvim_create_autocmd("LspAttach", {
      group = vim.api.nvim_create_augroup("UserLspConfig", {}),
      callback = function(ev)
        local keymap = vim.keymap
        local opts = { buffer = ev.buf, silent = true }

        -- TODO: LSP keymap
        opts.desc = "Show LSP references"
        keymap.set("n", "gr", "<cmd>Telescope lsp_references<CR>", opts)

        opts.desc = "Go to declaration"
        keymap.set("n", "gd", vim.lsp.buf.declaration, opts)

        opts.desc = "Show LSP definitions"
        keymap.set("n", "gd", "<cmd>Telescope lsp_definitions<CR>", opts)

        opts.desc = "Show LSP implementations"
        keymap.set("n", "gi", "<cmd>Telescope lsp_implementations<CR>", opts)

        opts.desc = "Show LSP type definitions"
        keymap.set("n", "gt", "<cmd>Telescope lsp_type_definitions<CR>", opts)

        opts.desc = "See available code actions"
        keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, opts)

        opts.desc = "Smart rename"
        keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)

        opts.desc = "Show buffer diagnostics"
        keymap.set("n", "<leader>D", "<cmd>Telescope diagnostics bufnr=0<CR>", opts)

        opts.desc = "Show line diagnostics"
        keymap.set("n", "<leader>d", function()
          vim.diagnostic.open_float({ width = 80 })
        end, opts)

        opts.desc = "Go to previous diagnostic"
        keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)

        opts.desc = "Go to next diagnostic"
        keymap.set("n", "]d", vim.diagnostic.goto_next, opts)

        opts.desc = "Show documentation for what is under cursor"
        keymap.set("n", "K", vim.lsp.buf.hover, opts)

        opts.desc = "Restart LSP"
        keymap.set("n", "<leader>rs", ":LspRestart<CR>", opts)
      end,
    })

    local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
    for type, icon in pairs(signs) do
      local hl = "DiagnosticSign" .. type
      vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
    end
  end,
}
