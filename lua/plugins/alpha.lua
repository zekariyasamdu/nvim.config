return {
	"goolord/alpha-nvim",
	event = "VimEnter",
	config = function()
		local alpha = require("alpha")
		local dashboard = require("alpha.themes.dashboard")

		-- Set header
		dashboard.section.header.val = {
			[[                      #       #"                          ]],
			[[                     ,p      #                            ]],
			[[                     d      #                             ]],
			[[                     #     d                              ]],
			[[                     q     p                              ]],
			[[                     `b   d                               ]],
			[[                      `7=6'                               ]],
			[[                      (6"9)                               ]],
			[[                      .~**~.                              ]],
			[[                     d _db._\=.                           ]],
			[[                   .~*` ""`  "*.~...~.                    ]],
			[[                 .'   .      .'`.`.`.``.                  ]],
			[[               .'    :``  _='`_..~*~*~.`\                 ]],
			[[              /_..&;         ``"**~..~"` .                ]],
			[[             ,"*"`` , J `.    *~...__..=".                ]],
			[[            y~`    `  | `.`       `````  \`               ]],
			[[          d '     `  ; `.`     .;   _`.  b.               ]],
			[[           '( `      .  `.`.    `    ``   ' ;             ]],
			[[          `:    ` `  `r"`.`.      _.._     l:             ]],
			[[          .:(  `. `  J  _"~_      '``*=&_~ | )            ]],
			[[          ). )   \   ) _`8.            `'&`|`             ]],
			[[          `L~     .. ( 8 `     `    .   `.\J              ]],
			[[            q     `.`  _ .`    .:   ' .~  `)              ]],
			[[            '. ;     `` .  .   `     .    p.              ]],
			[[            (\`)         ` `        ; .   '.              ]],
			[[             )\  \.       ` .       '  ` / p              ]],
			[[             `;". `.      ' `._ .~~`    /` ;              ]],
			[[               `.". ` _ _ )   ``     ,.'` '               ]],
			[[                 `."~_```( _    .. _~``  /                ]],
			[[                   )```*~~.....~~*` `  .'                 ]],
			[[                  (  .~**~. ```.` .   /                   ]],
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
