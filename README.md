# Neovim Configuration - Essential Plugins

This document describes each essential plugin in my Neovim configuration and its exact purpose.

## Requirements

- Neovim 0.9+
- Node.js
- Python
- lazygit
- Tree-sitter CLI
- cpp build essentials

## Table of Contents

- [Plugin Manager](#plugin-manager)
- [Essentials](#essentials)

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
