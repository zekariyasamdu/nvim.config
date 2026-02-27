return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		-- Set header
		dashboard.section.header.val = {
			[[                                                ]],
			[[                                          _.oo. ]],
			[[                  _.u[[/;:,.         .odMMMMMM' ]],
			[[               .o888UU[[[/;:-.  .o@P^    MMM^   ]],
			[[              oN88888UU[[[/;::-.        dP^     ]],
			[[             dNMMNN888UU[[[/;:--.   .o@P^       ]],
			[[            ,MMMMMMN888UU[[/;::-. o@^           ]],
			[[            NNMMMNN888UU[[[/~.o@P^              ]],
			[[            888888888UU[[[/o@^-..               ]],
			[[           oI8888UU[[[/o@P^:--..                ]],
			[[        .@^  YUU[[[/o@^;::---..                 ]],
			[[      oMP     ^/o@P^;:::---..                   ]],
			[[   .dMMM    .o@^ ^;::---...                     ]],
			[[  dMMMMMMM@^`       `^^^^                       ]],
			[[ YMMMUP^                                        ]],
			[[  ^^                                            ]],
			[[                                                ]],
		}

		-- Set menu
		dashboard.section.buttons.val = {
			dashboard.button("SPC sr", "󰁯 > Restore Session For Current Directory", "<cmd>AutoSession restore<CR>"),
			dashboard.button("SPC ee", " > Toggle file explorer", "<cmd>Oil<CR>"),
			dashboard.button("SPC ff", "󰱼 > Find File", "<cmd>Telescope find_files<CR>"),
			dashboard.button("SPC fs", " > Find Word", "<cmd>Telescope live_grep<CR>"),
			dashboard.button("q", " > Quit NVIM", "<cmd>qa<CR>"),
		}

		dashboard.section.footer.val = "Beautiful, naked, big-titty womеn just don't fall out the sky, you know?!"

		-- Send config to alpha
		alpha.setup(dashboard.opts)

		-- Disable folding on alpha buffer
		vim.cmd([[autocmd FileType alpha setlocal nofoldenable]])
	end,
}
