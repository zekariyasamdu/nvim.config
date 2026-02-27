-- oil
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
-- cusom

-- Tabs
vim.keymap.set("n", "<leader>ta", ":tabnew<CR>")
vim.keymap.set("n", "<leader>tl", ":tabs<CR>")
for i = 1, 9 do
	vim.keymap.set("n", "<leader>t" .. i, function()
		vim.cmd("tabn " .. i)
	end)
end
