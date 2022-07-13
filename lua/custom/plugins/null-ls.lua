local present, null_ls = pcall(require, "null-ls")
local M = {}

if not present then
   return
end

local b = null_ls.builtins
local sources = {
   b.formatting.prettier,
}

M.setup = function()
   null_ls.setup {
      debug = true,
      sources = sources,

      -- format on save
      on_attach = function(client)
         if client.resolved_capabilities.document_formatting then
            vim.cmd "autocmd BufWritePre <buffer> lua vim.lsp.buf.formatting_sync()"
         end
      end,
   }
end

return M
