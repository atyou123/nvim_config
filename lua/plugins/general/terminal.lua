return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			open_mapping = "<C-`>",
			terminal_mappings = true,
			size = 15,
		})
	end,
}
