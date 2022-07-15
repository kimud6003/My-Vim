local M = {}

M.setup_lsp = function(attach, capabilities)
   local lspconfig = require "lspconfig"

   -- lspservers with default config
   local servers = { "html" }

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

   for _, lsp in ipairs(servers) do
      lspconfig[lsp].setup {
         on_attach = attach,
         capabilities = capabilities,
         flags = {
            debounce_text_changes = 150,
         },
      }
   end
end

return M
