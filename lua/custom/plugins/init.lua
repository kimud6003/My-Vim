-- example file i.e lua/custom/init.lua

-- load your globals, autocmds here or anything .__.

return{
     ['mfussenegger/nvim-jdtls']={},

     ['mfussenegger/nvim-dap']={
          config = function()
             require('custom.plugins.dap')
          end
     },

     ["rcarriga/nvim-dap-ui"]={
        requires = {"mfussenegger/nvim-dap"},
          config = function()
             local present2, dapui= pcall(require, "dapui")
             local right =  require"custom.plugins.dapui"
             dapui.setup(right)
         end
     },
--   hop 
     ['phaazon/hop.nvim']={
        branch = 'v2', -- optional but strongly recommended
        config = function()
          local present, hop= pcall(require, "hop")
            if not present then
               return
            end
          hop.setup { keys = 'etovxqpdygfblzhckisuran' }
        end
     },
     ["folke/trouble.nvim"]={
        requires = "kyazdani42/nvim-web-devicons",
        config = function()
          local present, trouble= pcall(require, "trouble")
            if not present then
               return
            end
          trouble.setup {}
        end
     },
-- Scorllbar 생성 
   ["petertriho/nvim-scrollbar"]={
      config = function()
          local present, scrollBar= pcall(require, "scrollbar")
            if not present then
               return
            end
            scrollBar.setup()
      end
   },

-- /를 =>  Search 라인 생성 
  ['VonHeikemen/searchbox.nvim']={
     requires = {
       {'MunifTanjim/nui.nvim'}
     }
  },

-- notify 생성
   ['rcarriga/nvim-notify'] ={
      config = function()
          local present, notify= pcall(require, "notify")
            if not present then
               return
            end
            notify.setup{
               stages = 'fade_in_slide_out',
               background_colour = 'FloatShadow',
               itmeout = 3000,

            }
          vim.notify = notify
      end
   },

-- shade 생성
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

   -- auto tag
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

    -- auto save
   ["Pocco81/AutoSave.nvim"] = {
      module = "autosave",
      config = function ()
         local present,autosave = pcall(require, "autosave")
         if present then
            autosave.setup()
         end
      end
   },

   -- react-snippet
   ['dsznajder/vscode-es7-javascript-react-snippets'] = {
    run = 'yarn install --frozen-lockfile && yarn compile',
      config = function ()
         -- local present,autosave = pcall(require, "")
         -- if present then
         --    autosave.setup()
         -- end
      end

   },

   -- visualmode 들여쓰기
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

   -- markdown preview
   ["iamcco/markdown-preview.nvim"] = {
    run = function() vim.fn["mkdp#util#install"]() end,
    run2 = "cd app && npm install",
    setup = function() vim.g.mkdp_filetypes = { "markdown" } end,
    ft = { "markdown" },
   },

   -- Formatter
   ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
       require "custom.plugins.null-ls"
    end,
   },

   ["kdheepak/lazygit.nvim"] = {}
}
