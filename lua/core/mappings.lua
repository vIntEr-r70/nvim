vim.g.mapleader = " " 
vim.g.maplocalleader = "\\"

vim.keymap.set('i', 'jj', '<Esc>')

-- vim.keymap.set('n', '<leader>wv', ':vsplit<CR>')
-- vim.keymap.set('n', '<leader>wh', ':hsplit<CR>')
-- vim.keymap.set('n', '<leader>h',  ':wincmd h<CR>')
-- vim.keymap.set('n', '<leader>l',  ':wincmd l<CR>')
-- vim.keymap.set('n', '<leader>bb', ':bd<CR>')
-- vim.keymap.set('n', '<leader>bB', ':%bd<CR>')

vim.keymap.set('n', '<leader>e',  ':lua MiniFiles.open()<CR>')
vim.keymap.set('n', '<leader>fs', ':lua MiniVisits.select_path()<CR>')

