return {
	{
		"mfussenegger/nvim-ansible",
		ft = "yaml",
		config = function()
			vim.keymap.set("v", "<leader>te", function()
				require("ansible").run()
			end, { buffer = true, silent = true })
			vim.keymap.set(
				"n",
				"<leader>te",
				":w<CR> :lua require('ansible').run()<CR>",
				{ buffer = true, silent = true }
			)
		end,
	},
}
