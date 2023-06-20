local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local sources = {

  -- webdev stuff
  b.formatting.prettier.with {
    filetypes = { "html", "markdown", "css", "javascript", "javascriptreact", "typescript", "typescriptreact", "astro" },
  }, -- so prettier works only on these filetypes

  -- b.diagnostics.eslint.with {
  --   filetypes = { "html", "markdown", "css", "javascript", "javascriptreact", "typescript", "typescriptreact","tsx", "astro" },
  -- },

  -- Lua
  b.formatting.stylua,

  -- cpp
  b.formatting.clang_format,
}

null_ls.setup {
  debug = true,
  sources = sources,
}
