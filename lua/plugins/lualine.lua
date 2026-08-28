return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	config = function()
		local lualine = require("lualine")
		local lazy_status = require("lazy.status")
		-- tokyonight colors
		-- local colors = {
		-- 	blue = "#7AA2F7",
		-- 	green = "#9ECE6A",
		-- 	orange = "#FF9E64",
		-- 	yellow = "#E0AF68",
		-- 	red = "#F93357",
		-- 	fg = "#A9B1D6",
		-- 	bg = "#262738",
		-- 	inactive_bg = "#2c3043",
		-- }

		-- tokyonight colors
		local colors = {
			bg = "#252530",
			fg = "#cdcdcd",
			inactive_bg = "#1c1c24",

			primary = "#aeaed1",
			secondary = "#d7d7d7",
			accent = "#f3be7c",
			muted = "#606079",
		}

		local my_lualine_theme = {
			normal = {
				a = { bg = colors.primary, fg = colors.bg, gui = "bold" },
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},

			insert = {
				a = { bg = colors.secondary, fg = colors.bg, gui = "bold" },
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},

			visual = {
				a = { bg = colors.accent, fg = colors.bg, gui = "bold" },
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},

			command = {
				a = { bg = colors.primary, fg = colors.bg, gui = "bold" },
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},

			replace = {
				a = { bg = colors.accent, fg = colors.bg, gui = "bold" },
				b = { bg = colors.bg, fg = colors.fg },
				c = { bg = colors.bg, fg = colors.fg },
			},

			inactive = {
				a = { bg = colors.inactive_bg, fg = colors.muted, gui = "bold" },
				b = { bg = colors.inactive_bg, fg = colors.muted },
				c = { bg = colors.inactive_bg, fg = colors.muted },
			},
		}

		lualine.setup({
			options = {
				theme = my_lualine_theme,
			},

			sections = {
				lualine_x = {
					{
						lazy_status.updates,
						cond = lazy_status.has_updates,
						color = { fg = colors.accent },
					},
					{ "fileformat" },
					{ "filetype" },
				},
			},
		})
	end,
}
