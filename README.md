<div align="center">

# Lagoon.nvim

A Neovim theme inspired from the VSCode theme [antfu/vscode-theme-vitesse](https://github.com/antfu/vscode-theme-vitesse), more specifically the [Black variant](https://github.com/antfu/vscode-theme-vitesse/blob/main/themes/vitesse-black.json).

<img width="1774" alt="Screen Shot 2022-07-07 at 13 51 44" src="https://raw.githubusercontent.com/ChrisMGeo/lagoon.nvim/main/.github/images/Main.png">

</div>

## Introduction

Introducing "Lagoon" – a meticulously crafted Neovim port inspired by the sleek
and sophisticated "Vitesse Black" Visual Studio Code theme. Immerse yourself in
a serene coding experience as the deep, calming hues of Lagoon transform your
Neovim environment, combining functionality with elegance.
## Installation

Using `vim-plug`

```vim
Plug 'ChrisMGeo/lagoon.nvim'
```

Using `packer`

```lua
use {
  "ChrisMGeo/lagoon.nvim",
}
```

Using `lazy.nvim`

```lua
{
  "ChrisMGeo/lagoon.nvim",
  name = "lagoon",
  branch = "main",
  priority = 1000,
  -- ignore the below if using a config like LazyVim or AstroNvim
  config = function()
    vim.cmd("colorscheme lagoon")
  end
}
```

## Usage

Simply set the colorscheme with the builtin command `:colorscheme`

```vim
" Vimscript
colorscheme lagoon
```

```lua
-- Lua
vim.cmd("colorscheme lagoon")
```

## Screenshots

**Coding**
<img width="1774" alt="Screen Shot 2022-07-07 at 14 03 54" src="https://raw.githubusercontent.com/ChrisMGeo/lagoon.nvim/main/.github/images/CodingExample.png">
