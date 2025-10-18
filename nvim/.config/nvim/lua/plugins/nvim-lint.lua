return {
	{ -- Linting
		"mfussenegger/nvim-lint",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			local lint = require("lint")
			-- Get Rubocop to run by bundle.
			local rubocop = lint.linters.rubocop
			rubocop.cmd = "bundle"
			rubocop.args = {
				"exec",
				"rubocop",
				"--format",
				"json",
				"--force-exclusion",
				"--server",
				"--stdin",
				function()
					return vim.api.nvim_buf_get_name(0)
				end,
			}
			lint.linters_by_ft = {
				ruby = { "rubocop" },
				ansible = { "ansible_lint" },
				markdown = { "markdownlint" },
			}

			vim.api.nvim_create_autocmd({ "BufWritePost", "BufEnter" }, {
				callback = function()
					lint.try_lint()
				end,
			})
		end,
	},
}
