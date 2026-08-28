return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			open_mapping = [[<c-\>]],
			shade_terminals = true,
			direction = "tab",
			float_opts = {
				border = "rounded",
			},
		})
		vim.keymap.set("t", "<Esc>", [[<C-\><C-n>]])
	end,
}
