local present, null_ls = pcall(require, "null-ls")
local M = {}

if not present then
   return
end

local b = null_ls.builtins

local sources = {
   b.formatting.prettier,
   b.formatting.google_java_format
}

null_ls.setup {
   debug = true,
   sources = sources,
}
