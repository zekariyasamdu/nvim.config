return {
	"barrettruth/live-server.nvim",
	cmd = { "LiveServerStart", "LiveServerStop" },
	config = function()
		require("live-server").setup({})
	end,
}
