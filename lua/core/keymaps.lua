vim.g.mapleader = " "
vim.g.maplocalleader = " "

local no_recursive_mappings = {
	n = { -- normal
		-- moving between multiple windows
		["<C-h>"] = "<C-w>h",
		["<C-j>"] = "<C-w>j",
		["<C-k>"] = "<C-w>k",
		["<C-l>"] = "<C-w>l",
		-- resize window
		["<leader><Up>"] = ":resize +3<CR>",
		["<leader><Down>"] = ":resize -3<CR>",
		["<leader><Left>"] = ":vertical resize -3<CR>",
		["<leader><Right>"] = ":vertical resize +3<CR>",
		-- go to different buffers
		["L"] = ":bnext<CR>",
		["H"] = ":bprevious<CR>",
		["J"] = "<Nop>",
		["K"] = "<Nop>",
		-- delete no yank
		["d"] = '"_d',
		["<leader>d"] = "d",
	},
	v = { -- visual
		-- stay in visual mode when tabbing
		[">"] = ">gv",
		["<"] = "<gv",
		-- move a block
		["J"] = ":move '>+1<CR>gv-gv",
		["K"] = ":move '<-2<CR>gv-gv",
		-- delete/paste no yank
		["d"] = '"_d',
		["<leader>d"] = "d",
		["p"] = '"_dP',
		["<leader>p"] = "P",
		["P"] = '"_dP',
		["<leader>P"] = "P",
	},
	i = { -- insert
    },
	x = { -- visual block
		-- delete/paste no yank
		["d"] = '"_d',
		["<leader>d"] = "d",
		["p"] = '"_dP',
		["<leader>p"] = "P",
		["P"] = '"_dP',
		["<leader>P"] = "P",
	},
    t = {
        ["<Esc>"] = "<C-\\><C-n>",
		["<C-h>"] = "<C-\\><C-N><C-w>h",
		["<C-j>"] = "<C-\\><C-N><C-w>j",
		["<C-k>"] = "<C-\\><C-N><C-w>k",
		["<C-l>"] = "<C-\\><C-N><C-w>l",
    },
}

local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }

for mode, table in pairs(no_recursive_mappings) do
    for k, v in pairs(table) do
        keymap(mode, k, v, opts)
    end
end
