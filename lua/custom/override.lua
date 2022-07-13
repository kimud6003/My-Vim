
local M = {}

M.treesitter = {
   ensure_installed = {
      "html",
      "css",
      "javascript",
      "typescript",
      "json",
      "markdown",
      "python",
   },
}

M.nvimtree = {
   git = {
      enable = true,
   },

   renderer = {
      highlight_git = true,
      icons = {
         show = {
            git = true,
         },
      },
   },
}



return M
