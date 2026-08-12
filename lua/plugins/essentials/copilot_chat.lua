return {
	{
		"CopilotC-Nvim/CopilotChat.nvim",
		dependencies = {
			{ "nvim-lua/plenary.nvim", branch = "master" },
		},
		build = "make tiktoken",
		opts = {
			-- See Configuration section for options
		},
		config = function()
			vim.api.nvim_set_keymap("n", "<leader>cc", "<cmd>CopilotChat<cr>", { noremap = true, silent = true })
		end,
	},
}
