return { -- Colorscheme
	"cdmill/neomodern.nvim",
	lazy = false,
	priority = 1000,
	config = function()
		require("neomodern").setup({
			style = "campfire",
		})
		require("neomodern").load()
	end,
}
