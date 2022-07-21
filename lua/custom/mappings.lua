local M = {}

M.test= {
   -- See `<cmd> :help vim.lsp.*` for documentation on any of the below functions
   n = {
      ["gD"] ={"<Cmd> lua vim.lsp.buf.declaration()<CR>","   lsp declaration"},

      ["gd"] = {
         "<Cmd> lua vim.lsp.buf.definition()<CR>",
         "   lsp definition",
      },

      ["K"] = {
         "<Cmd> lua vim.lsp.buf.hover()<CR>",
         "   lsp hover",
      },

      ["gi"] = {
         "<Cmd> lua vim.lsp.buf.implementation()<CR>",
         "   lsp implementation",
      },

      ["<leader>ls"] = {
         "<Cmd> lua signature_help()<CR>",
         "   lsp signature_help",
      },

      ["<leader>D"] = {
         "<Cmd> lua vim.lsp.buf.type_definition()<CR>",
         "   lsp definition type",
      },

      ["<leader>ra"] = {
         "<Cmd> lua require(\"nvchad_ui.renamer\").open()<CR>",
         "   lsp rename",
      },

      ["<leader>ca"] = {
         "<Cmd> lua vim.lsp.buf.code_action()<CR>",
         "   lsp code_action",
      },

      ["gr"] = {
         "<Cmd> lua vim.lsp.buf.references()<CR>",
         "   lsp references",
      },

      ["<leader>f"] = {
         "<Cmd> lua vim.lsp.open.floating()<CR>",
         "   floating diagnostic",
      },

      ["[d"] = {
         "<Cmd> lua vim.diagnostic.goto_prev()<CR>",
         "   goto prev",
      },

      ["d]"] = {
         "<Cmd> lua vim.diagnostic.goto_next()<CR>",
         "   goto_next",
      },

      ["<leader>fm"] = {
         "<Cmd> lua vim.lsp.buf.formatting()<CR>",
         "   lsp formatting",
      },

      ["<leader>wa"] = {
         "<Cmd> lua vim.lsp.buf.add_workspace_folder()<CR>",
         "   add workspace folder",
      },

   },
}


M.java ={
   i={
      ["<A-cr>"] = {"<Cmd> lua require'jdtls'.organize_imports() <CR>","import"},
   },
   v={
      ["<leader>jv"] = {"<Cmd>lua require('jdtls').extract_variable(true)<CR>","Extract Var"},
      ["<leader>jc"] = {"<Esc><Cmd>lua require('jdtls').extract_constant(true)<CR>","Extract Const"},
      ["<leader>je"] = {"<Cmd>lua require('dapui').eval()<CR>","dapui-eval"}
   },
   n={
      ["<A-cr>"] = {"<Cmd> lua require'jdtls'.organize_imports() <CR>","import"},
      ["<leader>jv"] = {"<Cmd>lua require('jdtls').extract_variable()<CR>","Extract Var"},
      ["<leader>jb"] = {"<Cmd> DapToggleBreakpoint <CR>","debugger_breakpoint"},
      ["<leader>jl"] = {"<Cmd> DapContinue <CR>","debugger_start"},
      ["<leader>jt"] = {"<Cmd> DapTerminate <CR>","debugger_stop"},
      ["<leader>js"] = {"<Cmd>lua require'dap'.step_over()<CR>","debugger step"},
      ["<leader>jr"] = {"<Cmd>lua require'dap'.repl.open()<CR>","debugger repl"},
      ["<leader>jq"] = {"<Cmd>lua require('dapui').close()<CR>","dapui-close"}

   }
}

M.gitsings = {
   n = {
      ["<leader>gp"] = { "<cmd> Gitsigns preview_hunk <CR>", "  Preview Hunk" },
      ["<leader>gl"] = { "<cmd> LazyGit <CR>", "  LazyGit" },
   },
}

M.general = {
   n = {
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
