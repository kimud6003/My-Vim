local M = {}

M.gitsings = {
   n = {
      ["<leader>gS"] = { "<cmd> Gitsigns stage_buffer <CR>", "   Stage Buffer" },
      ["<leader>gR"] = { "<cmd> Gitsigns reset_buffer <CR>", "  Reset buffer" },
      ["<leader>gp"] = { "<cmd> Gitsigns preview_hunk <CR>", "  Preview Hunk" },
      ["<leader>gb"] = { "<cmd> Gitsigns toggle_current_line_blame<CR>", "  Toggle Blame" },
      ["<leader>gD"] = { "<cmd> Gitsigns diffthis<CR>", "繁  Diff Code" },
      ["<leader>gl"] = { "<cmd> LazyGit <CR>", "  LazyGit" },
   },
}

return M
