-- example file i.e lua/custom/init.lua

-- load your globals, autocmds here or anything .__.

return{
   ['rcarriga/nvim-notify'] ={},

   ['karb94/neoscroll.nvim'] = {
      module = "neoscroll",
      config = function()
          local present, scroll= pcall(require, "neoscroll")

            if not present then
               return
            end

            scroll.setup()
      end
   },

   ["andreadev-it/shade.nvim"] = {
      module = "shade",
      config = function()
          local present, shade = pcall(require, "shade")

         if not present then
            return
         end

         shade.setup {
            overlay_opacity = 50,
            opacity_step = 1,
            exclude_filetypes = { "NvimTree" },
         }
      end,
   },

   ["windwp/nvim-ts-autotag"] = {
      ft = { "html", "javascriptreact" },
      after = "nvim-treesitter",
      module = "nvim-ts-autotagneoscroll",
      config = function()
         local present, autotag = pcall(require, "nvim-ts-autotag")
         if present then
            autotag.setup()
         end
      end,
   },

   ["Pocco81/AutoSave.nvim"] = {
      module = "autosave",
      config = function ()
         local present,autosave = pcall(require, "autosave")
         if present then
            autosave.setup()
         end
      end
   },

   ['dsznajder/vscode-es7-javascript-react-snippets'] = {
    run = 'yarn install --frozen-lockfile && yarn compile'
   },

   ["booperlv/nvim-gomove"] = {

    config = function()
      local gomoveCheck, gomove = pcall(require, "gomove")

      if not gomoveCheck then
         return
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
