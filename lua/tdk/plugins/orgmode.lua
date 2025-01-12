return {
  'nvim-orgmode/orgmode',
  event = 'VeryLazy',
  ft = { 'org' },
  config = function()
    require('orgmode').setup({
      -- TODO: if you are using org mode, change these directories
      org_agenda_files = '~/my/org/**/*',
      org_default_notes_file = '~/my/org/refile.org',
      win_split_mode = { 'float', 0.5 },
    })

    require('nvim-treesitter.configs').setup {
      indent = {
        enable = true
      },
      highlight = {
        enable = true,
        additional_vim_regex_highlighting = { 'org' }, -- This line is needed
      },
      ensure_installed = { 'org' },
    }
  end,
}
