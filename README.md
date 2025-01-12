# TDK Distribution for NeoVim 

It just works and that's it.

**⚠️ Warning**: this configuration works properly, though it should (will) be refactored later. 

To find out more about configuration try `<leader>ft` and check out TODO comments.

Main plugins:

- `telescope` - for navigation, and technical stuff like color scheme;
- `mason.nvim` - for LSP management
- `blink.cmp` - for autocompletion;
- `oil.nvim` - file manager;
- `snacks.nvim` - UI enhancements;

Also there are:
- formatting via `conform`
- support for orgmode (`orgmode` plugin) and markdown (`obsidian.nvim` plugin)
- tmux integration for seamless switching between neovim and tmux panes (`vim-tmux-navigator`)
- zen mode (convenient for markdown and org notes)
- copilot integration (chat and autocompletions)

Most important key bindings:

- `<leader><leader>` - find and open a file;
- `<C-k>` and `<C-j>` - move up and down through list of options almost everywhere (telescope and autocompletion options);
- `<C-\>` - toggle last opened floating terminal. If you need multiple, use `1<C-\>`, `2<C-\>` etc;
- `<C-h>` (`j`/`k`/`l`) - move between split panes;
- `[d` / `]d` - move through diagnostics;
- `<leader>fc` - change color scheme

... and many more keys you can find in configuration. Just look into TODO comments.
