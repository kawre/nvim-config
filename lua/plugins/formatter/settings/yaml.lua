local M = {
	require("formatter.filetypes.yaml").prettier,
}

local opts = {}

return vim.tbl_deep_extend("force", M, opts)