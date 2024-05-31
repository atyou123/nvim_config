local vim_options = {
    backup = false,
    swapfile = false,
    undofile = true,
    writebackup = false,
    mouse = "",

    clipboard = "unnamedplus",
    expandtab = true,

    completeopt = { "menu", "noselect" },
    pumheight = 10,

    showtabline = 2,

    conceallevel = 0,
    fileencoding = "utf-8",

    splitbelow = true, -- force all horizontal splits to go below current window
    splitright = true, -- force all vertical splits to go to the right of current window

    smartindent = true,
    number = true,
    relativenumber = true,
    shiftwidth = 4,
    tabstop = 4,

    scrolloff = 8, -- is one of my fav
    sidescrolloff = 8,
    wrap = false,
}

for k, v in pairs(vim_options) do
    vim.opt[k] = v
end
