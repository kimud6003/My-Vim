-- Just an example, supposed to be placed in /lua/custom/

local M = {}
local override = require "custom.override"

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.options = {
   user = function()
      if os.getenv('OS') == "Windows_NT" then
         vim.opt.shell="pwsh "
         vim.opt.shellpipe="|"
         vim.opt.shellxquote=""
         vim.opt.shellcmdflag="-NoLogo -ExecutionPolicy RemoteSigned -Command"
      end
      if vim.fn.has "wsl" == 1 then
        vim.opt.clipboard = {
          copy = {
            ["+"] = "win32yank.exe -i --crlf",
            ["*"] = "win32yank.exe -i --crlf",
          },
          paste = {
            ["+"] = "win32yank.exe -o --lf",
            ["*"] = "win32yank.exe -o --lf",
          },
        }
      end
   end,
}

M.mappings = require "custom.mappings"

M.ui = {
  theme = "tokyodark",
}
M.plugins = {
   override = {
      ["kyazdani42/nvim-tree.lua"] = override.nvimtree,
      ["nvim-treesitter/nvim-treesitter"] = override.treesitter,
      ["hrsh7th/nvim-cmp"] = override.cmp,
      ["nvim-telescope/telescope.nvim"] = override.telescope,
      ["lewis6991/gitsigns.nvim"] = override.gitsigns,
   },
   options = {
      lspconfig = {
         setup_lspconf = "custom.plugins.lspconfig",
      },
   },
   user = require "custom.plugins",
}


return M
