return {
	"github/copilot.vim",
	config = function()
		vim.g.copilot_no_tab_map = true
		vim.api.nvim_set_keymap("i", "<C-A>", 'copilot#Accept("<CR>")', { silent = true, expr = true })
	end,
}
