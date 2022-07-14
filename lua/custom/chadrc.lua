-- Just an example, supposed to be placed in /lua/custom/

local M = {}
local override = require "custom.override"

-- make sure you maintain the structure of `core/default_config.lua` here,
-- example of changing theme:

M.mappings = require "custom.mappings"

M.ui = {
  theme = "tokyonight",
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