# TDK Distribution for NeoVim 

It just works and that's it.

<img width="1724" alt="image" src="https://github.com/user-attachments/assets/9b8d36c7-ed7b-4f2f-be9b-2c2860aff571" />

**⚠️ Warning**: this configuration works properly, though it should (will) be refactored later. 

## Installation

Default way (will overwrite any existing neovim configuration):

```
git clone https://github.com/tediak/tdk-nvim ~/.config/nvim
nvim ~/my/project
```

If you want to keep your own nvim configuration, you can clone and use this one separately. For example, by cloning to another directory and creating an alias:

```
git clone https://github.com/tediak/tdk-nvim ~/.config/tdk-nvim
```

Then, in your shell config file (`~/.zshrc` for instance):

```
alias tdkvim="NVIM_APPNAME=tdk-nvim nvim "
```

then source the file (or restart the shell), and run:

```
tdkvim ~/my/project
```

## Usage

To find out more about configuration try `<leader>ft` and check out TODO comments.

Key plugins:

- `telescope` - for navigation, and technical stuff like color scheme;
- `mason.nvim` - for LSP management
- `blink.cmp` - for autocompletion;
- `oil.nvim` - file manager;

Also there:
- formatting via `conform`
- support for orgmode (`orgmode` plugin) and markdown (`obsidian.nvim` plugin)
- tmux integration for seamless switching between neovim and tmux panes (`vim-tmux-navigator`)
- zen mode (convenient for markdown and org notes)
- copilot integration (chat and autocompletions)

Important key bindings:

- `<leader><leader>` - find and open a file;
- `<C-k>` and `<C-j>` - move up and down through list of options almost everywhere (telescope and autocompletion options);
- `<C-\>` - toggle last opened floating terminal. If you need multiple, use `1<C-\>`, `2<C-\>` etc;
- `<C-h>` (`j`/`k`/`l`) - move between split panes;
- `[d` / `]d` - move through diagnostics;
- `<leader>fc` - change color scheme

... and many more keys you can find in configuration. Just look into TODO comments.
