<!-- ![](images/nvim-tailwindcss-new.png) -->

# Requirement

- sudo apt-install [nodejs](https://nodejs.org/) npm yad ripgrep fzf silversearcher-ag
- sudo pacman -S [nodejs](https://nodejs.org/) npm yad ripgrep fzf the_silver_searcher
- sudo npm install -g live-server prettier
- pip install pynvim --upgrade
- [neovim](https://github.com/neovim/neovim.git) >= 0.7.0
- another npm or pip package, can be found in installing language server instruction below
- [nodejs](https://nodejs.org/) >= 14.14 (>= 17.xx is better)

# VimPlug

Install [VimPlug](https://github.com/junegunn/vim-plug). <br />
for NeoVim

```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

# Language server

- More: [Coc Language server](https://github.com/neoclide/coc.nvim/wiki/Language-servers)
- Other than those listed below already installed

# 1. Install language server (Bash)

```sh
sudo npm i -g bash-language-server
CocInstall coc-sh
```

# 2. Install language server (Python) - Still not working (read the docs!)

```sh
sudo npm install -g jedi
pip install jedi-language-server
CocInstall coc-jedi
```

# 2.1. Python error? (jedi case only)

- Error: `[coc.nvim]: /bin/sh: 1: /home/agung/.config/coc/extensions/node_modules/ coc-jedi/.venv/bin/jedi-language-server: not found`
- `pip install -U jedi-language-server`
- `which jedi-language-server`
- Move it to the error message want

# Color Picker (VCoolor):

- `<Alt-H>` you can insert a hrx color anywhere (NORMAL and INSERT modes).
- `<Alt-R>` you can insert a rgb color anywhere (NORMAL and INSERT modes).
- `<Alt-V>` you can insert a hsl color anywhere (NORMAL and INSERT modes).
- `<Alt-W>` you can insert a rgba color anywhere (NORMAL and INSERT modes).

# Keybindings

Map leader = Space

| Key          | Descriptions                              |
| ------------ | ----------------------------------------- |
| leader-n     | Toggle NVIM Tree                          |
| leader-m     | Find file NVIM Tree                       |
| leader-f     | Telescope find_files                      |
| leader-g     | Telescope live_grep                       |
| leader-o     | Telescope buffers                         |
| leader-y     | Copy full path in current buffer          |
| leader-p     | Prettier                                  |
| leader-h     | nohl                                      |
| leader-l     | hlsearch                                  |
| leader-w     | Write (save)                              |
| leader-q     | Quit                                      |
| leader-sp    | Git signs preview hunk toggle             |
| leader-sv    | split                                     |
| leader-vs    | vsplit                                    |
| leader-tr    | Type and replace (global) 'old/new'       |
| leader-tl    | Type and replace (current line) 'old/new' |
| leader-rl    | Remove some last chacacter                |
| leader-rw    | Remove whitespaces                        |
| leader-sq    | Put sequance number                       |
| leader-ez    | Like changing file type extension         |
| leader-eq    | Like changing file type extension         |
| shift-h      | Previous buffers                          |
| shift-l      | Next buffers                              |
| space-c      | Close current buffers                     |
| Ctr-hjkl     | Move focuse split                         |
| Ctr-t        | Toggle Terminal                           |
| Ctr-/        | Toggle Comment                            |
| Ctr-<arrow>  | Resize split                              |
| Alt-j,k      | Page down, page up                        |
| Alt-j,k (v)  | Move line up and down (in visual mode)    |
| JK           | Move line up and down (in visual mode)    |
| -,=          | increase, decrease number                 |
| F3, F4       | set number, set relativenumber (toggle)   |
| F10          | Write (save)                              |
| F11          | Toggle wraping text                       |
| jk or kj (i) | Escape from insert mode (in insert mode)  |
| ---------    | --------------------                      |
