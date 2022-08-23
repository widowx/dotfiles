require('Comment').setup{
    padding = true,       -- Add space between comment and line
    sticky = true,        -- Curosr should stay at its position
    ignore = nil,         -- Lines to be ignored while comment/uncomment
    toggler = {           -- Keymaps in Normal + Visual mode
        line = 'gcc',     -- Line comment keymap
        block = 'gbc',    -- Block comment keymap
    },
    opleader = {          -- Keymappings in Normal + Visual mode
        line = 'gc',      -- Line comment keymap
        block = 'gb',     -- Block comment keymap
    },
    extra = {             -- Extra keymaps
        above = 'gcO',    -- Add comment on the above line
        below = 'gco',    -- Add comment on the below line
        eol = 'gcA',      -- Add comment at the end of line
    },
    mappings = {          -- Operator pending mapping
        basic = true,     
        extra = true,
        extended = false,
    },
    pre_hook = nil,        -- Pre-hook called before commenting the line
    post_hook = nil,       -- Post-hook called before commenting the line
}
