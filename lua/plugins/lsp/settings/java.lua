local M = { filetypes = { "java" } }

function M.formatter(util)
	return {
		function()
			vim.lsp.buf.format({ async = false })
		end,
	}
end

function M.settings()
	return {}
end

return M
