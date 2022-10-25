![](images/nvim-tailwindcss-new.png)

# Requirement

-   sudo pacman -S [nodejs](https://nodejs.org/) npm neovim zenity ripgrep the_silver_searcher
-   sudo apt-get install zenity ripgrep silversearcher-ag
-   npm install -g live-server js-beautify prettier yarn
-   npm install -g bash-language-server (optoinal, but recommended)
-   pip install python-language-server
-   pip install pynvim --upgrade
-   make sure python is on $PATH (not python3) I did sudo cp python3 python in /usr/bin
-   [neovim](https://github.com/neovim/neovim.git) >= 0.7.0 (or download the binary and put in your $PATH)
-   [nodejs](https://nodejs.org/) >= 14.14 (>= 17.xx is better) or download the binary, cp to /usr/local/, add to path; ex: `export PATH=/usr/local/node-v18.10.0-linux-x64/bin:$PATH`
-   [Coc extension](https://github.com/neoclide/coc.nvim/wiki/Using-coc-extensions) to read. (already installed in vimplug/plugins.vim)

# VimPlug

Install [VimPlug](https://github.com/junegunn/vim-plug). <br />

for NeoVim (Linux)

```sh
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

for NeoVim (PowerShell)

```sh
iwr -useb https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim |`
    ni "$(@($env:XDG_DATA_HOME, $env:LOCALAPPDATA)[$null -eq $env:XDG_DATA_HOME])/nvim-data/site/autoload/plug.vim" -Force
```

### Note for PowerShell in Windows

Change the 'source*' line in init.vim file from `source ~/.config/nvim/*.vim`to`source ~/AppData/Local/nvim/config/\*.vim`.

# Codi (Interactive scratchpad for js, python)

### A nice way to use Codi is through a shell wrapper that you can stick in your `~/.zshrc` or `~/.bashrc`:

```sh
# Codi
# Usage: codi [filetype] [filename]
codi() {
  local syntax="${1:-python}"
  shift
  vim -c \
    "let g:startify_disable_at_vimenter = 1 |\
    set bt=nofile ls=0 noru nonu nornu |\
    hi ColorColumn ctermbg=NONE |\
    hi VertSplit ctermbg=NONE |\
    hi NonText ctermfg=0 |\
    Codi $syntax" "$@"
}
```

# Keybindings

## My keybindings:

Map leader = Space

| Key          | Descriptions                                         |
| ------------ | ---------------------------------------------------- |
|              | **_General_**                                        |
| leader-n     | Toggle NVIM Tree                                     |
| leader-m     | Find file NVIM Tree                                  |
| leader-sv    | split                                                |
| leader-vs    | vsplit                                               |
| leader-p     | Prettier                                             |
| leader-h     | nohl                                                 |
| leader-l     | hlsearch                                             |
| leader-w     | Write (save)                                         |
| leader-q     | Quit                                                 |
| leader-c     | Close current buffers                                |
| leader-y     | Copy full path in current buffer                     |
| Ctr-/        | Toggle Comment                                       |
| Ctr-t        | Toggle Terminal                                      |
| Ctr-<arrow>  | Resize split                                         |
|              | **_Navigation_**                                     |
| Alt-j,k      | Page down, page up                                   |
| shift-h      | Previous buffers                                     |
| shift-l      | Next buffers                                         |
| Ctr-hjkl     | Move focuse split                                    |
| Alt-j,k (v)  | Move line up and down (in visual mode)               |
| JK           | Move line up and down (in visual mode)               |
|              | **_Telescope_**                                      |
| leader-f     | Telescope find_files                                 |
| leader-g     | Telescope live_grep                                  |
| leader-o     | Telescope buffers                                    |
| C-{x,v,t}    | Telescope open result (hor,ver,tab)                  |
|              | **_Git Signs_**                                      |
| leader-sp    | Git signs preview hunk toggle                        |
| leader-sj    | Git signs next hunk                                  |
| leader-sk    | Git signs prev hunk                                  |
|              | **_Easy Motion_**                                    |
| leader-j     | Target key line down                                 |
| leader-k     | Target key line up                                   |
| leader-zl    | Target key all lines                                 |
| leader-a     | Target key all words                                 |
| leader-zf    | Search for 1 characters                              |
| zs           | Search for 2 characters                              |
| z/           | Search with easy motion                              |
|              | **_Color Picker (VCoolor)_**                         |
| Alt-h        | Pick HEX color                                       |
| Alt-r        | Pick RGB color                                       |
| Alt-v        | Pick HSL color                                       |
| Alt-w        | Pick RGBA color                                      |
|              | **_Multiple Cursor_**                                |
| Ctr-n        | Add a new virtual cursor+selection on the next match |
| Ctr-x        | Skip the next match                                  |
| Ctr-p        | Remove current virtual cursor+selection and go back  |
| Alt-n        | Start multicursor and directly select all            |
|              | **_Agstr_**                                          |
| leader-tr    | Type and replace (global) 'old/new'                  |
| leader-tl    | Type and replace (current line) 'old/new'            |
| leader-rl    | Remove some last chacacter                           |
| leader-rw    | Remove whitespaces                                   |
| leader-sq    | Put sequance number                                  |
| leader-ez    | Like changing file type extension                    |
| leader-eq    | Like changing file type extension                    |
|              | **_Fugitive_**                                       |
| Ctr-w        | Gvdiffsplit                                          |
| Ctr-q        | Gdiffsplit                                           |
|              | **_Misc_**                                           |
| fFtT         | Use this to navigate (fF == ;,)                      |
| Ctr-g        | Codi                                                 |
| Alt-g        | Codi! (Deactivate Codi)                              |
| =,-          | increase, decrease number                            |
| F3, F4       | set number, set relativenumber (toggle)              |
| F5           | Toggle undotree                                      |
| F10          | Write (save)                                         |
| F11          | Toggle wraping text                                  |
| jk or kj (i) | Escape from insert mode (in insert mode)             |
| ---------    | --------------------                                 |

**NOTE for Multiple Cursor**: start with `g<C-n>` to match without boundaries (behaves like `g*` instead of `*`)
