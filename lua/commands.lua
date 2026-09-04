--Pack
vim.api.nvim_create_user_command("PackAdd", function(opts)
  vim.pack.add(opts.fargs)
end, {
  nargs = "+",
  desc = "Add plugins (:PackAdd user/repo1 user/repo2)",
})

vim.api.nvim_create_user_command("PackDel", function(opts)
  vim.pack.del(opts.fargs)
end, {
  nargs = "+",
  desc = "Delete plugins (:PackDel plugin1 plugin2)",
})

vim.api.nvim_create_user_command("PackUpdate", function(opts)
  -- checks if any argument is passed
  if opts.args:match("%S") then
    -- update specific plugins
    local plugins = vim.split(opts.args, "%s+", {
      trimempty = true,
    })

    -- update only specified plugins
    vim.pack.update(plugins)
  else
    -- update all
    vim.pack.update()
  end
end, {
  nargs = "*",
  desc = "Update all plugins or specific ones",
})

-- Treessiter
-- :InspectTree
vim.api.nvim_create_user_command("TSActive", function()
  vim.notify(vim.treesitter.get_parser():lang())
end, {
  desc = "Show active parser",
})

vim.api.nvim_create_user_command("TSStop", function()
  vim.treesitter.stop()
end, {
  desc = "Deactivate Treesitter",
})

-- lsp
vim.api.nvim_create_user_command("LspInfo", "checkhealth vim.lsp", {
  desc = "Show native Neovim 0.12 LSP status and health check",
})
