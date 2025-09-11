return {
	{
		"sindrets/diffview.nvim",
		config = function()
			vim.keymap.set("n", "<leader>gd", "<cmd>DiffviewOpen<cr>", { desc = "[G]et regular [D]iffview." })
		end,
	},
}
