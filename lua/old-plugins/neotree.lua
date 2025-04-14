-- If you want icons for diagnostic errors, you'll need to define them somewhere:
vim.fn.sign_define("DiagnosticSignError",
    {text = " ", texthl = "DiagnosticSignError"})
vim.fn.sign_define("DiagnosticSignWarn",
    {text = " ", texthl = "DiagnosticSignWarn"})
vim.fn.sign_define("DiagnosticSignInfo",
    {text = " ", texthl = "DiagnosticSignInfo"})
vim.fn.sign_define("DiagnosticSignHint",
    {text = "󰌵", texthl = "DiagnosticSignHint"})

require("neo-tree").setup({
    window = {
        mappings = {
            -- ["<space>"] = { 
            --     "toggle_node", 
            --     nowait = false, -- disable `nowait` if you have existing combos starting with this char that you want to use 
            -- },
            -- ["<2-LeftMouse>"] = "open",
            ["l"] = "open",
            -- ["<esc>"] = "cancel", -- close preview or floating neo-tree window
            -- ["P"] = { "toggle_preview", config = { use_float = true, use_image_nvim = true } },
            -- Read `# Preview Mode` for more information
            ["h"] = "focus_preview",
            -- ["S"] = "open_split",
            -- ["s"] = "open_vsplit",
            -- ["S"] = "split_with_window_picker",
            -- ["s"] = "vsplit_with_window_picker",
            -- ["t"] = "open_tabnew",
            -- ["<cr>"] = "open_drop",
            -- ["t"] = "open_tab_drop",
            -- ["w"] = "open_with_window_picker",
            --["P"] = "toggle_preview", -- enter preview mode, which shows the current node without focusing
            -- ["C"] = "close_node",
            -- ['C'] = 'close_all_subnodes',
            -- ["z"] = "close_all_nodes",
            --["Z"] = "expand_all_nodes",
            -- ["a"] = { 
            --   "add",
            --   -- this command supports BASH style brace expansion ("x{a,b,c}" -> xa,xb,xc). see `:h neo-tree-file-actions` for details
            --   -- some commands may take optional config options, see `:h neo-tree-mappings` for details
            --   config = {
            --     show_path = "none" -- "none", "relative", "absolute"
            --   }
            -- },
            -- ["A"] = "add_directory", -- also accepts the optional config.show_path option like "add". this also supports BASH style brace expansion.
            -- ["d"] = "delete",
            -- ["r"] = "rename",
            -- ["y"] = "copy_to_clipboard",
            -- ["x"] = "cut_to_clipboard",
            -- ["p"] = "paste_from_clipboard",
            -- ["c"] = "copy", -- takes text input for destination, also accepts the optional config.show_path option like "add":
            -- ["c"] = {
            --  "copy",
            --  config = {
            --    show_path = "none" -- "none", "relative", "absolute"
            --  }
            --}
            -- ["m"] = "move", -- takes text input for destination, also accepts the optional config.show_path option like "add".
            ["q"] = "close_window",
            -- ["R"] = "refresh",
            -- ["?"] = "show_help",
            -- ["<"] = "prev_source",
            -- [">"] = "next_source",
            -- ["i"] = "show_file_details",
        }
    }
})

vim.keymap.set('n', '<leader>e', ':Neotree float focus<CR>')
vim.keymap.set('n', '<leader>o', ':Neotree float git_status<CR>')

