return {
	"vague-theme/vague.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("vague").setup({
			transparent = true,
		})
		vim.cmd.colorscheme("vague")
	end,
}
