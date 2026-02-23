# Neovim Configuration - Essential Plugins

This document describes each essential plugin in this Neovim configuration and its exact purpose.

## Table of Contents

- [Plugin Manager](#plugin-manager)
- [Essentials](#essentials)
- [User Interface](#user-interface)
- [File Navigation](#file-navigation)
- [Development Tools](#development-tools)
- [Git Integration](#git-integration)
- [Themes](#themes)

---

## Plugin Manager

### lazy.nvim

- **Repository**: `folke/lazy.nvim`
- **Purpose**: Plugin manager for Neovim. Handles installation, updating, and loading of all plugins.

---

## Essentials

### nvim-treesitter

- **Repository**: `nvim-treesitter/nvim-treesitter`
- **Purpose**: Provides syntax highlighting, indentation, and code parsing using Tree-sitter. Supports languages: c, lua, vim, vimdoc, query, markdown, javascript, typescript, cpp, css, html, python.

### nvim-cmp

- **Repository**: `hrsh7th/nvim-cmp`
- **Purpose**: Completion engine for Neovim. Provides autocompletion in insert mode with support for LSP, snippets, buffer content, and file paths.
- **Dependencies**:
  - `cmp-buffer`: Completion from current buffer
  - `cmp-path`: Completion for file system paths
  - `LuaSnip`: Snippet engine
  - `cmp_luasnip`: LuaSnip integration
  - `friendly-snippets`: Pre-built snippet collection
  - `lspkind.nvim`: VS Code-like icons for completion items

### cmp-nvim-lsp

- **Repository**: `hrsh7th/cmp-nvim-lsp`
- **Purpose**: LSP completion source for nvim-cmp. Enables code completion powered by Language Server Protocol.

### mason.nvim / mason-lspconfig.nvim / mason-tool-installer.nvim

- **Repository**: `williamboman/mason.nvim`, `williamboman/mason-lspconfig.nvim`, `WhoIsSethDaniel/mason-tool-installer.nvim`
- **Purpose**: Portable package manager for LSP servers, linters, and formatters. Installs:
  - **LSP Servers**: ts_ls, eslint, html, cssls, tailwindcss, svelte, lua_ls, graphql, emmet_ls, prisma, pyright, clangd
  - **Formatters**: prettier, stylua, clang-format, isort, black
  - **Linters**: pylint, eslint_d

### nvim-lspconfig

- **Repository**: `neovim/nvim-lspconfig`
- **Purpose**: Configurations for Neovim's built-in LSP client. Enables language server support for various programming languages.

### nvim-lsp-file-operations

- **Repository**: `antosha417/nvim-lsp-file-operations`
- **Purpose**: LSP-powered file operations (rename, move, delete) that keep references updated.

### nvim-lint

- **Repository**: `mfussenegger/nvim-lint`
- **Purpose**: Asynchronous linter for Neovim. Runs linters (pylint) on file save and provides inline diagnostics.

### conform.nvim

- **Repository**: `stevearc/conform.nvim`
- **Purpose**: Formatter plugin with support for many languages. Automatically formats code on save. Supports: javascript, typescript, svelte, css, html, json, yaml, markdown, graphql, lua, python, cpp.

## Others

### alpha-nvim

- **Repository**: `goolord/alpha-nvim`
- **Purpose**: Dashboard/start screen for Neovim. Displays ASCII logo and quick access buttons for common actions.

### lualine.nvim

- **Repository**: `nvim-lualine/lualine.nvim`
- **Purpose**: Statusline plugin. Displays file information, mode, git status, and lazy.nvim update status at the bottom of the editor.

### trouble.nvim

- **Repository**: `folke/trouble.nvim`
- **Purpose**: Diagnostic list viewer. Shows LSP diagnostics, symbols, references, and quickfix/location lists in a sidebar.

### telescope.nvim

- **Repository**: `nvim-telescope/telescope.nvim`
- **Purpose**: Fuzzy finder for files, buffers, and help tags. Provides:
  - `ff` - Find files
  - `fg` - Live grep (search content)
  - `fb` - Search open buffers
  - `fh` - Search help tags

### telescope-ui-select.nvim

- **Repository**: `nvim-telescope/telescope-ui-select.nvim`
- **Purpose**: Integrates telescope with Neovim's built-in `vim.ui.select` for better selection menus.

### oil.nvim

- **Repository**: `stevearc/oil.nvim`
- **Purpose**: File explorer as a buffer. Provides a lightweight alternative to file trees for navigating directories.

### harpoon

- **Repository**: `ThePrimeagen/harpoon`
- **Purpose**: Quick file navigation. Allows marking and quickly jumping to frequently used files using number keys (1-5).

### nvim-surround

- **Repository**: `kylechui/nvim-surround`
- **Purpose**: Surround plugin for adding, changing, and deleting surrounding characters (quotes, brackets, tags).

### nvim-ts-autotag

- **Repository**: `windwp/nvim-ts-autotag`
- **Purpose**: Auto-closing and auto-renaming of HTML/XML tags using Tree-sitter.

### nvim-autopairs

- **Repository**: `windwp/nvim-autopairs`
- **Purpose**: Auto-pairing of brackets, quotes, and tags. Integrates with nvim-cmp for smart completion.

### toggleterm.nvim

- **Repository**: `akinsho/toggleterm.nvim`
- **Purpose**: Terminal emulator inside Neovim. Opens terminal in floating window with `<C-\>`.

### Comment.nvim

- **Repository**: `numToStr/Comment.nvim`
- **Purpose**: Commenting plugin for code. Supports line-wise and block-wise comments with keybindings.

### auto-session

- **Repository**: `rmagatti/auto-session`
- **Purpose**: Session management. Automatically saves and restores workspace sessions including open files and layout.

### tailwindcss-colorizer-cmp.nvim

- **Repository**: `roobert/tailwindcss-colorizer-cmp.nvim`
- **Purpose**: Displays Tailwind CSS colors in completion menu. Shows actual color swatches for Tailwind classes.

### lazygit.nvim

- **Repository**: `kdheepak/lazygit.nvim`
- **Purpose**: Neovim integration for lazygit. Opens lazygit in a floating window with `<leader>lg`.

---

### catppuccin

- **Repository**: `catppuccin/nvim`
- **Purpose**: Mocha-inspired color scheme with support for transparent floating windows.

### tokyonight

- **Repository**: `folke/tokyonight.nvim`
- **Purpose**: Tokyo Night color scheme. (configured but not set as default)

## Requirements

- Neovim 0.9+
- Node.js
- Python
- lazygit
- Tree-sitter CLI
- cpp build essentials
