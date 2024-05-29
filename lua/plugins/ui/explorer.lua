return { -- Directory tree
	"nvim-tree/nvim-tree.lua",
	config = function()
		vim.g.loaded_netrw = 1
		vim.g.loaded_netrwPlugin = 1

		vim.opt.termguicolors = true

		-- empty setup using defaults
		require("nvim-tree").setup({
			actions = {
				open_file = {
					quit_on_open = true,
				},
			},
		})

		vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle)
		vim.o.confirm = true
		vim.api.nvim_create_autocmd("BufEnter", {
			group = vim.api.nvim_create_augroup("NvimTreeClose", { clear = true }),
			callback = function()
				local layout = vim.api.nvim_call_function("winlayout", {})
				if
					layout[1] == "leaf"
					and vim.api.nvim_buf_get_option(vim.api.nvim_win_get_buf(layout[2]), "filetype") == "NvimTree"
					and layout[3] == nil
				then
					vim.cmd("quit")
				end
			end,
		})
	end,
}
