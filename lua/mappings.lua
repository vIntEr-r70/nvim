local keymap = vim.keymap.set

keymap('i', 'jj', '<Esc>')

-- keymap('n', '<leader>e',  ':lua MiniFiles.open()<CR>')
-- keymap('n', '<leader>fs', ':lua MiniPick.start({ source = { items = MiniVisits.select_path() } })<CR>')

-- ╔═══════════════════════╗
-- ║    Local Functions    ║
-- ╚═══════════════════════╝
local mini_files_open = function()
    local buffer_name = vim.api.nvim_buf_get_name(0)
    if buffer_name == "" or string.match(buffer_name, "Starter") then
        require('mini.files').open(vim.loop.cwd())
    else
        require('mini.files').open(vim.api.nvim_buf_get_name(0))
    end
end

local mini_pick_grep = function()
    local wrd = vim.fn.expand("<cword>")
    require('mini.pick').builtin.grep({ pattern = wrd })
end

local mini_extra_buf_lines = function()
    require('mini.extra').pickers.buf_lines({ scope = 'current' }) 
end

local mini_extra_diagnostic = function()
    require('mini.extra').pickers.diagnostic({ scope = "current" })
end

local vim_setqflist = function()
    vim.diagnostic.setqflist({ open = true })
end

-- ╔════════════════════╗
-- ║    Find Keymaps    ║
-- ╚════════════════════╝
keymap("n", "<leader>ff",       function() require('mini.pick').builtin.files() end,        { desc = 'Find File' })
keymap("n", "<leader>fr",       function() require('mini.pick').builtin.resume() end,       { desc = 'Find File' })
keymap("n", "<leader>e",        mini_files_open,                                            { desc = 'Find Manualy' })
keymap("n", "<leader><space>",  function() MiniExtra.pickers.visit_paths() end,             { desc = 'Find Buffer' })
keymap("n", "<leader>fg",       function() require('mini.pick').builtin.grep_live() end,    { desc = 'Find String' })
keymap("n", "<leader>fG",       mini_pick_grep,                                             { desc = 'Find String Cursor' })
keymap("n", "<leader>fh",       function() require('mini.pick').builtin.help() end,         { desc = 'Find Help' })
keymap("n", "<leader>fl",       function() require('mini.extra').pickers.hl_groups() end,   { desc = 'Find HL Groups' })
keymap('n', ',',                mini_extra_buf_lines,                                       { desc = 'Search Lines', nowait = true })

-- ╔══════════════════════╗
-- ║    Buffer Keymaps    ║
-- ╚══════════════════════╝
keymap("n", "<leader>bd",       "<cmd>bd<cr>",          { desc = 'Close Buffer' })
keymap("n", "<leader>bq",       "<cmd>%bd|e#<cr>",      { desc = 'Close other Buffers' })
keymap("n", "<S-l>",            "<cmd>bnext<cr>",       { desc = 'Next Buffer' })
keymap("n", "<S-h>",            "<cmd>bprevious<cr>",   { desc = 'Previous Buffer' })

-- ╔═══════════════════╗
-- ║    LSP Keymaps    ║
-- ╚═══════════════════╝
keymap("n", "<leader>lh",       "<CMD>ClangdSwitchSourceHeader<CR>",            { desc = 'Go To Source / Header' })
keymap("n", "<leader>ld",      function() vim.lsp.buf.definition() end,         { desc = 'Go To Definition' })
keymap("n", "<leader>ls",       "<cmd>Pick lsp scope='document_symbol'<cr>",    { desc = 'Show all Symbols' })
keymap("n", "<leader>lr",       function() vim.lsp.buf.rename() end,            { desc = 'Rename This' })
keymap("n", "<leader>la",       function() vim.lsp.buf.code_action() end,       { desc = 'Code Actions' })
keymap("n", "<leader>le",       mini_extra_diagnostic,                          { desc = "LSP Errors in Buffer" })
keymap("n", "<leader>lf",       vim_setqflist,                                  { desc = "LSP Quickfix" })

-- ╔══════════════════╗
-- ║    UI Keymaps    ║
-- ╚══════════════════╝
keymap('n', "<leader>wv",   ":vsplit<CR>",          { desc = 'Split verticaly' })
keymap('n', "<leader>wh",   ":hsplit<CR>",          { desc = 'Split horizontaly' })
keymap('n', "<M-h>",        ":wincmd h<CR>",        { desc = 'Focus Left' })
keymap('n', "<M-l>",        ":wincmd l<CR>",        { desc = 'Focus Right' })

keymap('n', "<leader>wq",   "<cmd>wincmd q<cr>",    { desc = 'Close Window' })
keymap('n', "<leader>n",    "<cmd>noh<cr>",         { desc = 'Clear Search Highlight' })
