local status_ok, null_ls = pcall(require, "null-ls")
if not status_ok then
	return
end

local formatting = null_ls.builtins.formatting
local diagnostics = null_ls.builtins.diagnostics

null_ls.setup({
	debug = false,
	sources = {
		formatting.prettier.with({ extra_args = { "--single-quotes", "--jsx-single-quotes" } }),
		formatting.stylua,
		formatting.gofmt,
		formatting.rustfmt,
		diagnostics.eslint,
	},
})
