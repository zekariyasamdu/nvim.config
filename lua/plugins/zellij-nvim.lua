return {
	"swaits/zellij-nav.nvim",
	lazy = true,
	event = "VeryLazy",
	keys = {
		{ "<c-w>h", "<cmd>ZellijNavigateLeftTab<cr>", { silent = true, desc = "navigate left or tab" } },
		{ "<c-w>j", "<cmd>ZellijNavigateDown<cr>", { silent = true, desc = "navigate down" } },
		{ "<c-w>k", "<cmd>ZellijNavigateUp<cr>", { silent = true, desc = "navigate up" } },
		{ "<c-w>l", "<cmd>ZellijNavigateRightTab<cr>", { silent = true, desc = "navigate right or tab" } },
	},
	opts = {},
}
