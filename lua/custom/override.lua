
local M = {}

local function border(hl_name)
   return {
      { "╭", hl_name },
      { "─", hl_name },
      { "╮", hl_name },
      { "│", hl_name },
      { "╯", hl_name },
      { "─", hl_name },
      { "╰", hl_name },
      { "│", hl_name },
   }
end

M.gitsigns = {
   signs = {
         add = { hl = "DiffAdd", text = "│", numhl = "GitSignsAddNr" },
         change = { hl = "DiffChange", text = "│", numhl = "GitSignsChangeNr" },
         delete = { hl = "DiffDelete", text = "", numhl = "GitSignsDeleteNr" },
         topdelete = { hl = "DiffDelete", text = "‾", numhl = "GitSignsDeleteNr" },
         changedelete = { hl = "DiffChangeDelete", text = "~", numhl = "GitSignsChangeNr" },
      },
   current_line_blame = true,
}

M.telescope ={
   extensions_list = { "themes", "terms", "notify" },
}

M.treesitter = {
   ensure_installed = {
      "html",
      "css",
      "javascript",
      "typescript",
      "json",
      "markdown",
      "python",
      "java"
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

M.cmp = {
   window= {
      documentation = {
         border = border "CmpBorder",
      },
   },
   formatting = {
      fields = {"kind","abbr","menu"},
   },
}


return M
