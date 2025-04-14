-----------------------------------------------------
require('config.lazy')
require('config.mini')

-----------------------------------------------------
require('plugins.mini-nvim')
require('plugins.mason')

-----------------------------------------------------
require('mappings')
require('configs')

-- require('core.plugins')
-- require('core.mappings')
-- require('core.colors')

-----------------------------------------------------
-- require('core.configs')

-- require('miniplugins.plugins')

-- require("mason").setup()

-- require('onedark').load()
-- require('onedark').setup({ style = 'warm' })


local lspconfig = require('lspconfig')
lspconfig.clangd.setup({})

vim.api.nvim_create_autocmd('LspAttach', {
    callback = function(ev)
        local client = vim.lsp.get_client_by_id(ev.data.client_id)
        if client:supports_method('textDocument/completion') then
            vim.lsp.completion.enable(true, client.id, ev.buf, { autotrigger = false })
        end
    end,
})
vim.diagnostic.config({ virtual_text = { current_line = true } })

-- Plugins
-----------------------------------------------------
-- -- require('plugins.treesitter')
-- require('plugins.lsp')
-- require('plugins.telescope')
-- -- require('plugins.autopairs')
-- -- require('plugins.buffline')
-- require('plugins.comments')
-- require('plugins.gitsigns')
-- require('plugins.lualine')
-- -- require('plugins.whichkey')
-- -- require('plugins.hop')
-- -- require('plugins.nvim-cmp')

