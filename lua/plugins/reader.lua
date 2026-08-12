return {
	"Sang-it/reader.nvim",
	cmd = "Reader",
	opts = {},
	config = function()
		local reader = require("reader")
		reader.setup({
			width = 120,
			auto_open = { "epub" },
		})
	end,
}
