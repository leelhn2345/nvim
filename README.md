# Neovim Config

Neovim configs to be shared amongst my computers.

This README is not meant to be a guide or any sorts,
but mostly for my own references.

Uses lazy.nvim as a plugin manager.

## Pre-requisites

I am using Ubuntu/WSL2 so steps may vary from your OS.

### System Dependencies

```sh
# for telescope grep
cargo binstall ripgrep 
sudo nala install libfuse2 -y
sudo nala install fd-find -y 
ln -s $(which fdfind) ~/.local/bin/fd # symlink to `find`

# for tree-sitter
cargo binstall tree-sitter-cli 

# for emmet-lsp
npm i -g emmet-ls
```

### Neovim Installation

Go to this [link](https://github.com/neovim/neovim/blob/master/INSTALL.md) for
the latest steps. But for conciseness, I have compiled the steps.

```sh
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim.appimage
chmod u+x nvim.appimage
sudo mv nvim.appimage ~/.local/bin/nvim

# source your start script - .bashrc / .zshrc / etc...
# and then run the following command
nvim $FILENAME
```

## Features

### Tmux

This setup works with tmux as well.
The `.tmux.conf` file will be uploaded into gist at an undetermined date.

### Keymaps

The core keymaps are located in `lua/config/keymaps.lua`.

For keymaps of plugins, they are usually located in the plugin file itself.

Can use telescope to find the key mappings - `<leader>fk`.

### Languages

- python
- nodeJS
- rust

LSPs, formatters, and linters should be installed and work right out of the box.

### UI

My default terminal has an acrylic setting and I like it.
Depending on the terminal used, may want to delete the transparent plugin.
