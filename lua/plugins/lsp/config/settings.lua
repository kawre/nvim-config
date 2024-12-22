local M = {}

M["arduino_language_server"] = {
	cmd = {
		"arduino-language-server",
		"-clangd",
		"clangd",
		"-cli",
		"arduino-cli",
		"cli-config",
		"~/.arduino15/arduino-cli.yaml",
		"-fqbn",
		"arduino:avr:uno",
	},
}

M["basedpyright"] = {
	settings = {
		basedpyright = {
			analysis = {
				typeCheckingMode = "standard",
				reportMissingSuperCall = false,
			},
		},
	},
	-- enabled = false,
}

M["bashls"] = {}

M["clangd"] = {
	cmd = {
		"clangd",
		"--offset-encoding=utf-16",
		"--fallback-style=Microsoft",
	},
}

M["cssls"] = {}

M["docker_compose_language_service"] = {}

M["dockerls"] = {}

M["eslint"] = {}

M["gopls"] = {}

M["html"] = {}

M["hyprls"] = {}

M["jdtls"] = {}

M["jsonls"] = {}

M["lemminx"] = {}

M["lua_ls"] = {}

M["marksman"] = {}

M["omnisharp"] = {
	cmd = { "omnisharp", "-lsp" },
}

M["pyright"] = {
	enabled = false,
}

M["taplo"] = {}

M["vtsls"] = {
	filetypes = {
		"javascript",
		"javascriptreact",
		"javascript.jsx",
		"typescript",
		"typescriptreact",
		"typescript.tsx",
	},
	settings = {
		complete_function_calls = true,
		vtsls = {
			enableMoveToFileCodeAction = true,
			autoUseWorkspaceTsdk = true,
			experimental = {
				maxInlayHintLength = 30,
				completion = {
					enableServerSideFuzzyMatch = true,
				},
			},
		},
		typescript = {
			format = { enable = false },
			updateImportsOnFileMove = { enabled = "always" },
			suggest = {
				completeFunctionCalls = true,
			},
			inlayHints = {
				enumMemberValues = { enabled = true },
				functionLikeReturnTypes = { enabled = true },
				parameterNames = { enabled = "literals" },
				parameterTypes = { enabled = true },
				propertyDeclarationTypes = { enabled = true },
				variableTypes = { enabled = false },
			},
		},
		javascript = {
			format = { enable = false },
		},
	},
}

M["vimls"] = {}

return M
