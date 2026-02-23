# Tree structure

└── nvim
├── README.md
├── after
│   └── lsp
│   ├── init.lua
│   └── lsp.lua
├── init.lua
├── lazy-lock.json
└── lua
├── config
│   └── lazy.lua -> lazy.vim plugin manager
├── lsp
│   └── lsp.lua -> Lsp configrations
├── plugins
│   ├── catppuccin.lua
│   ├── essentials -> Most important plugins
│   │   ├── formater.lua
│   │   ├── lsp.lua
│   │   ├── mason.lua
│   │   ├── nvim-cmp.lua
│   │   └── treesitter.lua
│   ├── harpoon.lua
│   ├── .
│   ├── .
│   └── .
└── zach -> personal preferences
├── autocmd.lua
├── globals.lua
├── keymaps.lua
└── options.lua

# Essential plugins

├── plugin
   └── dependencies

## Mason

├── mason-lspconfig
│ └── mason
│ └── nvim-lspconfig
├── mason-tool-installer
   └── mason

## Lsp

├── cmp-nvim-lsp
│ └── nvim-lsp-file-operations
│ └── lazydev

## Nvim-cmp (Completion)

├── nvim-cmp
│ └── cmp-buffer
│ └── cmp-path
│ └── LuaSnip
│ └── cmp_luasnip
│ └── friendly-snippets
│ └── lspkind

## Nvim-treesitter

├── nvim-treesitter

## formater

├── conform
