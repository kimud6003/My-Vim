-- example file i.e lua/custom/init.lua

-- load your globals, autocmds here or anything .__.

return{
  ['dsznajder/vscode-es7-javascript-react-snippets'] = {
    run = 'yarn install --frozen-lockfile && yarn compile'
  },

  ["booperlv/nvim-gomove"] = {

    config = function()
      local gomoveCheck, gomove = pcall(require, "gomove")

      if not gomoveCheck then
        vim.notify("Gomove not found\n\n")
      end

      gomove.setup {
        map_defaults = true,
        reindent = true,
        undojoin = true,
        move_past_end_col = false,
      }
    end,
  },

  ["iamcco/markdown-preview.nvim"] = {
    run = function() vim.fn["mkdp#util#install"]() end,
    run2 = "cd app && npm install",
    setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
    ft = { "markdown" },
  },

  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require("custom.plugins.null-ls").setup()
    end,
  },

  ["kdheepak/lazygit.nvim"] = {}
}
