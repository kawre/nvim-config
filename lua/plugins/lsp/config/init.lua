local M = {
	"neovim/nvim-lspconfig",
	dependencies = {
		"neoconf.nvim",
		"blink.cmp",
	},
	event = "LazyFile",
	cmd = { "LspInfo", "LspInstall", "LspUninstall" },
}

M.config = function()
	require("plugins.lsp.config.handlers").setup()
	require("neoconf").setup()

	local lspconfig = require("lspconfig")

	local params = {
		on_attach = require("plugins.lsp.config.handlers").on_attach,
		capabilities = require("plugins.lsp.config.handlers").capabilities,
	}

	local settings = require("plugins.lsp.config.settings")
	for lsp, opts in pairs(settings) do
		if opts.enabled ~= false then
			lspconfig[lsp].setup(vim.tbl_deep_extend("force", params, opts))
		end
	end
end

return M
