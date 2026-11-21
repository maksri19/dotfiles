return {
	{
		"akinsho/bufferline.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		event = "VeryLazy",
		config = function()
			require("bufferline").setup({
				options = {
				separator_style = "slant",
				show_buffer_icons = true,
				show_buffer_close_icons = true,
				},
			})
			vim.keymap.set("n", "<leader>l", "<cmd>BufferLineCycleNext<CR>", { desc = "Next buffer" }) -- leader+h for next tab
			vim.keymap.set("n", "<leader>h", "<cmd>BufferLineCyclePrev<CR>", { desc = "Previous buffer" }) -- leader+l for prev tab
			vim.keymap.set("n", "<leader>L", "<cmd>BufferLineMoveNext<CR>", { desc = "Move buffer left" })
			vim.keymap.set("n", "<leader>H", "<cmd>BufferLineMovePrev<CR>", { desc = "Move buffer right" })
			vim.keymap.set("n", "<leader>x", "<cmd>bdelete<CR>", { desc = "Close current buffer" }) -- leader+x to close tab
			vim.keymap.set("n", "<leader>X", "<cmd>bdelete!<CR>", { desc = "Close current buffer" }) -- leader+x to close tab
		end,
	},
}
