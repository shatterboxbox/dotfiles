return {
	{
		"williamboman/mason.nvim",

		--opts = {
		-- ensure_installed = {
		--  "stylua",
		-- "shellcheck",
		--"shfmt",
		-- "flake8",
		--},
		--},
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"bicep",
					"dockerls",
					"powershell_es",
					"terraformls",
					"tflint",
					"yamlls",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			lspconfig.lua_ls.setup({})
			lspconfig.terraformls.setup({})
			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set({ "n", "v" }, "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
