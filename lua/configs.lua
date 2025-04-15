vim.g.did_load_filetypes    = 1
vim.g.formatoptions         = "qrn1"

vim.o.number = true
vim.o.relativenumber = false

vim.o.laststatus = 2
vim.o.list = true
vim.opt.listchars["tab"]      = '→'
vim.opt.listchars["space"]    = '·'
vim.opt.listchars["nbsp"]     = '␣'
vim.opt.listchars["trail"]    = '•'
vim.opt.listchars["eol"]      = '⤶'
vim.opt.listchars["precedes"] = '«'
vim.opt.listchars["extends"]  = '»'

vim.o.autoindent    = true
vim.o.shiftwidth    = 4
vim.o.tabstop       = 4
vim.o.expandtab     = true
vim.o.softtabstop   = 4
vim.o.smartindent   = true

vim.o.scrolloff = 10
vim.o.clipboard = "unnamed,unnamedplus"
vim.o.updatetime = 1000
vim.opt.iskeyword:append("-")
vim.opt.wrap = false

-- vim.o.spelllang = "de,en"
-- vim.o.spelloptions = "camel"
-- vim.opt.complete:append("kspell")
-- vim.o.path = vim.o.path .. ",**"
-- vim.o.tags = vim.o.tags .. ",/home/dosa/.config/nvim/tags"

-- don't save blank buffers to sessions (like neo-tree, trouble etc.)
vim.opt.sessionoptions:remove('blank')

vim.opt.shell           = "/usr/bin/fish"
vim.opt.termguicolors   = true

vim.wo.signcolumn = "yes"
vim.wo.linebreak = true

-- vim.opt.showmode = false
-- vim.opt.virtualedit = "block"
-- vim.opt.undofile = true
--
-- -- Splits
-- vim.opt.splitbelow = true
-- vim.opt.splitright = true
--
-- -- Shorter messages
-- vim.opt.shortmess:append("c")
--
-- -- Fillchars
-- vim.opt.fillchars = {
--     vert = "│",
--     fold = "⠀",
--     eob = " ", -- suppress ~ at EndOfBuffer
--     -- diff = "⣿", -- alternatives = ⣿ ░ ─ ╱
--     msgsep = "‾",
--     foldopen = "▾",
--     foldsep = "│",
--     foldclose = "▸"
-- }
--
