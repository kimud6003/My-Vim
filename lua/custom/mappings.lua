local M = {}


M.java ={
   i={
      ["<A-cr>"] = {"<Cmd> lua require'jdtls'.organize_imports() <CR>","import"},
      ["<A-o>"] = {"<Cmd> lua vim.lsp.buf.code_action()<CR>","code_action"},
      ["<leader>jv"] = {"<Cmd>lua require('jdtls').extract_variable()<CR>","Extract Var"},
      ["<leader>jc"] = {"<Cmd>lua require('jdtls').extract_constant()<CR>","Extract Const"}
   },
   v={
      ["<leader>jv"] = {"<Cmd>lua require('jdtls').extract_variable(true)<CR>","Extract Var"},
      ["<leader>jc"] = {"<Esc><Cmd>lua require('jdtls').extract_constant(true)<CR>","Extract Const"}
   },
   n={
      ["<A-o>"] = {"<Cmd> lua vim.lsp.buf.code_action()<CR>","code_action"},
      ["<A-cr>"] = {"<Cmd> lua require'jdtls'.organize_imports() <CR>","import"},
      ["<leader>jv"] = {"<Cmd>lua require('jdtls').extract_variable()<CR>","Extract Var"},
      ["<leader>jc"] = {"<Cmd>lua require('jdtls').extract_constant()<CR>","Extract Const"}
   }
}

M.gitsings = {
   n = {
      ["<leader>g"] = {
         function()
            vim.diagnostic.open_float()
         end,
         "   Git",
      },
      ["<leader>gS"] = { "<cmd> Gitsigns stage_buffer <CR>", "   Stage Buffer" },
      ["<leader>gR"] = { "<cmd> Gitsigns reset_buffer <CR>", "  Reset buffer" },
      ["<leader>gp"] = { "<cmd> Gitsigns preview_hunk <CR>", "  Preview Hunk" },
      ["<leader>gb"] = { "<cmd> Gitsigns toggle_current_line_blame<CR>", "  Toggle Blame" },
      ["<leader>gD"] = { "<cmd> Gitsigns diffthis<CR>", "繁  Diff Code" },
      ["<leader>gl"] = { "<cmd> LazyGit <CR>", "  LazyGit" },
   },
}

M.general = {
   n = {
      [":"] = {"<cmd>FineCmdline<CR>","FineCmdline"},
      ["/"] = {"<cmd>SearchBoxIncSearch<CR>","SearchBoxIncSearch"},
      ["<S-h>"] = { "<C-w>h", " window left" },
      ["<S-l>"] = { "<C-w>l", " window right" },
      ["<S-j>"] = { "<C-w>j", " window down" },
      ["<S-k>"] = { "<C-w>k", " window up" },
   }
}

M.trouble = {
   n = {
      ["<leader>q"] = {
         function()
            vim.diagnostic.open_float()
         end,
         "   Trouble",
      },
      ["<leader>qw"] = { "<cmd> TroubleToggle  <CR>", "  trouble space" },
      ["<leader>qd"] = { "<cmd> TroubleToggle document_diagnostics  <CR>", "  trouble document" },
   },
}


M.hop = {
  n ={
      ["<leader>h"] = {
         function()
            vim.diagnostic.open_float()
         end,
         "   Hop",
      },
      ["<leader>hw"]={"<cmd> HopWord <CR>", "  Hop Word"},
      ["<leader>he"]={"<cmd> HopChar1 <CR>", "  Hop Character"},
      ["<leader>hl"]={"<cmd> HopLineStart <CR>", "  Hop HopLineStart"},
      ["<leader>hp"]={"<cmd> HopPattern <CR>", "  Hop HopPattern"},
   }
}

M.telescope = {
   n = {
      -- histroy
      ["<leader>fh"] = {"<cmd> : Telescope notify <CR>", " Notify histroy"   },
      ["<leader>fr"] = {"<cmd> : SearchBoxReplace <CR>", " change Character"   },
   },

}

M.shade = {
   n = {
      ["<leader>s"] = {
         function()
            require("shade").toggle()
         end,

         "   toggle shade.nvim",
      },
   },
}

return M
