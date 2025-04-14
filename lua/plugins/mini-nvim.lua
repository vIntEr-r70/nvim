-- Text editing
require('mini.comment').setup()

-- General workflow
require('mini.files').setup()
require('mini.visits').setup()
require('mini.extra').setup()
require('mini.jump2d').setup()
require('mini.hues').setup({ background = '#242424', foreground = '#e4e6ed' })

-- Appearance
require('mini.icons').setup()
require('mini.statusline').setup()
require('mini.tabline').setup()
require('mini.notify').setup()
require('mini.trailspace').setup()

local miniclue = require('mini.clue')
miniclue.setup({
  triggers = {
    -- Leader triggers
    { mode = 'n', keys = '<Leader>' },
    { mode = 'x', keys = '<Leader>' },

    { mode = "n", keys = "\\" },

    -- Built-in completion
    { mode = 'i', keys = '<C-x>' },

    -- `g` key
    { mode = 'n', keys = 'g' },
    { mode = 'x', keys = 'g' },

    -- Marks
    { mode = 'n', keys = "'" },
    { mode = 'n', keys = '`' },
    { mode = 'x', keys = "'" },
    { mode = 'x', keys = '`' },

    -- Registers
    { mode = 'n', keys = '"' },
    { mode = 'x', keys = '"' },
    { mode = 'i', keys = '<C-r>' },
    { mode = 'c', keys = '<C-r>' },

    -- Window commands
    { mode = 'n', keys = '<C-w>' },

    -- `z` key
    { mode = 'n', keys = 'z' },
    { mode = 'x', keys = 'z' },
  },

  clues = {
    { mode = "n", keys = "<Leader>b", desc = " Buffer" },
    { mode = "n", keys = "<Leader>f", desc = " Find" },
    { mode = "n", keys = "<Leader>g", desc = "󰊢 Git" },
    { mode = "n", keys = "<Leader>i", desc = "󰏪 Insert" },
    { mode = "n", keys = "<Leader>l", desc = "󰘦 LSP" },
    { mode = "n", keys = "<Leader>m", desc = " Mini" },
    { mode = "n", keys = "<Leader>q", desc = " NVim" },
    { mode = "n", keys = "<Leader>s", desc = "󰆓 Session" },
    { mode = "n", keys = "<Leader>u", desc = "󰔃 UI" },
    { mode = "n", keys = "<Leader>w", desc = " Window" },

    -- Enhance this by adding descriptions for <Leader> mapping groups
    miniclue.gen_clues.builtin_completion(),
    miniclue.gen_clues.g(),
    miniclue.gen_clues.marks(),
    miniclue.gen_clues.registers(),
    miniclue.gen_clues.windows(),
    miniclue.gen_clues.z(),
  },
})

require('mini.pick').setup({
    mappings = {
        move_down  = '<C-j>',
        move_start = '<C-n>',
        move_up    = '<C-k>',
    }
})
