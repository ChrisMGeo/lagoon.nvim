<div align="center">

# Lagoon.nvim

A Neovim theme inspired from the VSCode theme [antfu/vscode-theme-vitesse](https://github.com/antfu/vscode-theme-vitesse), more specifically the [Black variant](https://github.com/antfu/vscode-theme-vitesse/blob/main/themes/vitesse-black.json).

<!-- <img width="1774" alt="Screen Shot 2022-07-07 at 13 51 44" src="https://user-images.githubusercontent.com/11582667/177871063-15dc3f88-8d2c-4c2f-8a92-65da8baad3e2.png"> -->

</div>

## Introduction

Introducing "Lagoon" – a meticulously crafted Neovim port inspired by the sleek
and sophisticated "Vitesse Black" Visual Studio Code theme. Immerse yourself in
a serene coding experience as the deep, calming hues of Lagoon transform your
Neovim environment, combining functionality with elegance.
## Installation

Using `vim-plug`

```vim
Plug 'rktjmp/lush.nvim'
Plug 'ChrisMGeo/lagoon.nvim'
```

Using `packer`

```lua
use {
  "ChrisMGeo/lagoon.nvim",
  requires = { "rktjmp/lush.nvim" }
}
```

Using `lazy.nvim`

```lua
{
  "ChrisMGeo/lagoon.nvim",
  dependencies = { "rktjmp/lush.nvim" },
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

## Customization

This theme was built with `rktjmp/lush.nvim`. For details regarding how to use `lush.nvim`, see
[rktjmp/lush.nvim](https://github.com/rktjmp/lush.nvim).

## Screenshots

**Coding**
<!-- <img width="1774" alt="Screen Shot 2022-07-07 at 14 03 54" src="https://user-images.githubusercontent.com/11582667/177871081-7e1e84b5-0456-491e-b3fc-2938eb4a1181.png"> -->

<!-- **Fold preview (nvim-ufo)** -->
<!-- <img width="1864" alt="image" src="https://user-images.githubusercontent.com/11582667/186334727-5cda9c44-9a00-456d-bbef-f488001f8f26.png"> -->
