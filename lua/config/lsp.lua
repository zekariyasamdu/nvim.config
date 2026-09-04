-- mason
require("mason").setup({
	ui = {
		icons = {
			package_installed = "✓",
			package_pending = "➜",
			package_uninstalled = "✗",
		},
	},
})

-- mason-lspconfig
require("mason-lspconfig").setup() -- enables language servers automatically
-- or you can do it manually
-- nvim-lspconfig
-- vim.lsp.enable("lua_ls")

-- mason-tool-installer -> we can use mason package names insted of lspconfig names (linters and formaters as well which)
require("mason-tool-installer").setup({
	ensure_installed = {
		-- lsps
		"ts_ls",
		"eslint",
		"html",
		"cssls",
		"tailwindcss",
		"svelte",
		"lua_ls",
		"graphql",
		"emmet_ls",
		"prismals",
		"pyright",
		-- "clangd",
		"sqlls",
		"intelephense",
		"terraform-ls",
		"gh-actions-language-server",
		"docker-language-server",
		-- formaters
		"prettier", -- ts/js formatter
		"prettierd", -- like prettier but faster
		"biome", --  like prettierd but faster
		"stylua", -- lua formatter
		"clang-format", -- cpp formatter
		"isort", -- python formatter
		"black", -- python formatter
		"php-cs-fixer", -- php formatter
		-- linters
		"pylint", -- python linter
		"eslint_d", -- eslint linter
		"phpstan", --php linter
	},
	integrations = {
		["mason-lspconfig"] = true, -- so that we can use lspconfig names as alternative options
	},
})

local keymap = vim.keymap -- for conciseness
vim.api.nvim_create_autocmd("LspAttach", {
	group = vim.api.nvim_create_augroup("UserLspConfig", {}),
	callback = function(ev)
		-- Buffer local mappings.
		-- See `:help vim.lsp.*` for documentation on any of the below functions
		local opts = { buffer = ev.buf, silent = true }
		--  "gra" (Normal and Visual mode) is mapped to |vim.lsp.buf.code_action()|
		--  "gri" is mapped to |vim.lsp.buf.implementation()|
		--  "grn" is mapped to |vim.lsp.buf.rename()|
		--  "grr" is mapped to |vim.lsp.buf.references()|
		--  "grt" is mapped to |vim.lsp.buf.type_definition()|
		--  "grx" is mapped to |vim.lsp.codelens.run()|
		--  "gO" is mapped to |vim.lsp.buf.document_symbol()|

		opts.desc = "Go to declaration"
		keymap.set("n", "gD", vim.lsp.buf.declaration, opts) -- go to declaration

		opts.desc = "Show LSP definition"
		keymap.set("n", "gd", vim.lsp.buf.definition, opts) -- show lsp definition

		keymap.set("n", "xx", function()
			MiniExtra.pickers.diagnostic({
				get_opts = {
					severity = {
						min = vim.diagnostic.severity.WARN,
					},
				},
			})
		end, { desc = "Show All LSP Disgnostics" })

		opts.desc = "Show line diagnostics"
		keymap.set("n", "<leader>d", vim.diagnostic.open_float, opts) -- show diagnostics for line

		opts.desc = "Go to previous diagnostic"
		keymap.set("n", "[d", function()
			vim.diagnostic.jump({ count = -1, float = true })
		end, opts) -- jump to previous diagnostic in buffer
		--
		opts.desc = "Go to next diagnostic"
		keymap.set("n", "]d", function()
			vim.diagnostic.jump({ count = 1, float = true })
		end, opts) -- jump to next diagnostic in buffer
	end,
})

-- vim.lsp.inlay_hint.enable(true)

local severity = vim.diagnostic.severity

vim.diagnostic.config({
	signs = {
		text = {
			[severity.ERROR] = " ",
			[severity.WARN] = " ",
			[severity.HINT] = "󰠠 ",
			[severity.INFO] = " ",
		},
	},
})
