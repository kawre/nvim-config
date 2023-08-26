local M = {
	filetypes = { "rust" },
}

function M.formatter(util)
	return {
		require("formatter.filetypes.rust").rustfmt,

		function()
			return {}
		end,
	}
end

function M.settings()
	return {}
end

return M
