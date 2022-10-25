![](images/nvim-tailwindcss-new.png)

# Requirement

-   sudo pacman -S [nodejs](https://nodejs.org/) npm neovim zenity ripgrep the_silver_searcher
-   sudo apt-get install zenity ripgrep silversearcher-ag
-   npm install -g live-server js-beautify prettier yarn
-   npm install -g bash-language-server (optoinal, but recommended)
-   pip install python-language-server
-   pip install pynvim --upgrade
-   make sure python is on $PATH (not python3) I did sudo cp python3 python in /usr/bin
-   [neovim](https://github.com/neovim/neovim.git) >= 0.8.0 (or download the binary and put in your $PATH)
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
| Leader-n     | Toggle NVIM Tree                                     |
| Leader-m     | Find file NVIM Tree                                  |
| Leader-sv    | split                                                |
| Leader-vs    | vsplit                                               |
| Leader-p     | Prettier                                             |
| Leader-h     | nohl                                                 |
| Leader-l     | hlsearch                                             |
| Leader-w     | Write (save)                                         |
| Leader-q     | Quit                                                 |
| Leader-c     | Close current buffers                                |
| Leader-y     | Copy full path in current buffer                     |
| Ctr-/        | Toggle Comment                                       |
| Ctr-t        | Toggle Terminal                                      |
| Ctr-<arrow>  | Resize split                                         |
|              | **_Navigation_**                                     |
| Alt-j,k      | Page down, page up                                   |
| Shift-h      | Previous buffers                                     |
| Shift-l      | Next buffers                                         |
| Ctr-hjkl     | Move focuse split                                    |
| Alt-j,k (v)  | Move line up and down (in visual mode)               |
| JK           | Move line up and down (in visual mode)               |
|              | **_Coc_**                                            |
| Ctrl-space   | Trigger completion                                   |
| Ctrl-<j,k>   | Pum visible next, prev                               |
| K            | Show documentation                                   |
| gd           | Go to definition                                     |
| gi           | Coc implementation                                   |
| gy           | Type definition                                      |
| gr           | Coc references                                       |
| Leader-rn    | Rename function (C-<o,i> => back, !back)             |
|              | _More about coc, read docs_                          |
|              | **_Vim javascript_**                                 |
| Leader-xl    | Toggle concealing characters                         |
|              | **_Telescope_**                                      |
| leader-f     | Telescope find_files                                 |
| leader-g     | Telescope live_grep                                  |
| leader-o     | Telescope buffers                                    |
| C-{x,v,t}    | Telescope open result (hor,ver,tab)                  |
| C-{u,d}      | Scroll preview result (up, down)                     |
|              | **_Git Signs_**                                      |
| Leader-sp    | Git signs preview hunk toggle                        |
| Leader-sj    | Git signs next hunk                                  |
| Leader-sk    | Git signs prev hunk                                  |
|              | **_Easy Motion_**                                    |
| Leader-j     | Target key line down                                 |
| Leader-k     | Target key line up                                   |
| Leader-zl    | Target key all lines                                 |
| Leader-a     | Target key all words                                 |
| Leader-zf    | Search for 1 characters                              |
| Zs           | Search for 2 characters                              |
| Z/           | Search with easy motion                              |
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
| Leader-tr    | Type and replace (global) 'old/new'                  |
| Leader-tl    | Type and replace (current line) 'old/new'            |
| Leader-rl    | Remove some last chacacter                           |
| Leader-rw    | Remove whitespaces                                   |
| Leader-sq    | Put sequance number                                  |
| Leader-ez    | Like changing file type extension                    |
| Leader-eq    | Like changing file type extension                    |
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
