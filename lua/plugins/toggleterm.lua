return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			size = 15,
			open_mapping = [[<c-\>]],
			shade_terminals = true,
			direction = "float",
			float_opts = {
				border = "rounded",
			},
		})
	end,
}
