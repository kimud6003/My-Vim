-- local M = {}
--
-- M.setup_lsp = function(attach, capabilities)
--    local lspconfig = require "lspconfig"
--
--    -- lspservers with default config
--    local servers = { "html" }
--
--
--    for _, lsp in ipairs(servers) do
--       lspconfig[lsp].setup {
--          on_attach = attach,
--          capabilities = capabilities,
--          flags = {
--             debounce_text_changes = 150,
--          },
--       }
--    end
--       require("lspconfig").tsserver.setup {
--       init_options = {
--          preferences = {
--             disableSuggestions = true,
--          },
--       },
--
--       on_attach = function(client, bufnr)
--          client.resolved_capabilities.document_formatting = false
--          vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>fm", "<cmd>lua vim.lsp.buf.formatting()<CR>", {})
--       end,
--    }
-- end
--
-- return M


local M = {}

M.setup_lsp = function(attach, capabilities)
   local lspconfig = require "lspconfig"

   local servers = { "html", "cssls", "bashls", "emmet_ls", "clangd", "pyright" }

   for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup {
         on_attach = attach,
         capabilities = capabilities,
         root_dir = vim.loop.cwd,
      }
   end

   lspconfig.jdtls.setup {
      vmargs = {
           "-XX:+UseParallelGC",
           "-XX:GCTimeRatio=4",
           "-XX:AdaptiveSizePolicyWeight=90",
           "-Dsun.zip.disableMemoryMapping=true",
           "-Djava.import.generatesMetadataFilesAtProjectRoot=false",
           "-Xmx1G",
           "-Xms100m",
       },
      use_lombok_agent = true
   }

   -- temporarily disable tsserver suggestions
   require("lspconfig").tsserver.setup {
      init_options = {
         preferences = {
            disableSuggestions = true,
         },
      },

      on_attach = function(client, bufnr)
         client.resolved_capabilities.document_formatting = false
         vim.api.nvim_buf_set_keymap(bufnr, "n", "<space>fm", "<cmd>lua vim.lsp.buf.formatting()<CR>", {})
      end,
   }
end

return M
