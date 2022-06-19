-- example file i.e lua/custom/init.lua

-- load your globals, autocmds here or anything .__.

return{
    ["booperlv/nvim-gomove"] = {
      setup = function()
        local tmp, gomove = pcall(require, "gomove")
        gomove.setup {
          map_defaults = true,
          reindent = true,
          undojoin = true,
          move_past_end_col = false,
        }
      end,
    },
    ["github/copilot.vim"] = {},
    ["zbirenbaum/copilot.lua"] = {
      require("copilot_cmp").setup(),
      config = function()
        vim.defer_fn(function() require("copilot").setup() end, 100)
      end,
    },
    ["zbirenbaum/copilot-cmp"] = {
      after = { "copilot.lua", "nvim-cmp" },
    },
    ["iamcco/markdown-preview.nvim"] = {},
    ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
        require("custom.plugins.null-ls").setup()
      end,
    },
    ["kdheepak/lazygit.nvim"] = {}
  }

